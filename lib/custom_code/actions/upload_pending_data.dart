// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sqflite/sqflite.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../backend/sqlite/sqlite_manager.dart';

Future<String> uploadPendingData() async {
  final supabase = Supabase.instance.client;
  final db = await SQLiteManager.instance.database;
  int visitasSubidas = 0;
  int pedidosSubidos = 0;

  try {
    // ---------------------------------------------------------
    // 1. SINCRONIZAR VISITAS (mvisitas)
    // ---------------------------------------------------------

    // A. Buscamos las visitas donde FECULTACT está vacío (Pendientes)
    final List<Map<String, dynamic>> visitasPendientes = await db.query(
      'mvisitas',
      where: "FECULTACT IS NULL OR FECULTACT = ''",
    );

    if (visitasPendientes.isNotEmpty) {
      // B. Transformamos los datos para Supabase (si es necesario)
      // Nota: Nos aseguramos de enviar los campos exactos que espera Supabase
      List<Map<String, dynamic>> visitasParaSubir = [];

      for (var row in visitasPendientes) {
        // Creamos una copia mutable del mapa
        Map<String, dynamic> newRow = Map.from(row);

        // IMPORTANTE: Asignamos la fecha de actualización AHORA para enviarla al servidor
        // Supabase recibirá esta fecha indicando cuándo se sincronizó
        newRow['fecultact'] = DateTime.now().toIso8601String();

        visitasParaSubir.add(newRow);
      }

      // C. Subimos a Supabase (Upsert evita duplicados por ID)
      await supabase.from('mvisitas').upsert(visitasParaSubir);

      // D. Si no hubo error, actualizamos SQLite localmente para ponerlas en VERDE
      Batch batch = db.batch();
      for (var row in visitasPendientes) {
        batch.update(
          'mvisitas',
          {
            'FECULTACT': DateTime.now().toIso8601String()
          }, // Marcamos como verde
          where: 'VISITASID = ?',
          whereArgs: [row['VISITASID']],
        );
      }
      await batch.commit(noResult: true);
      visitasSubidas = visitasPendientes.length;
    }

    // ---------------------------------------------------------
    // 2. SINCRONIZAR PEDIDOS (mnotapedcab)
    // ---------------------------------------------------------

    // A. Buscamos pedidos donde MTSRECNO está vacío
    final List<Map<String, dynamic>> pedidosPendientes = await db.query(
      'mnotapedcab',
      where: "MTSRECNO IS NULL OR MTSRECNO = ''",
    );

    if (pedidosPendientes.isNotEmpty) {
      List<Map<String, dynamic>> pedidosParaSubir = [];

      for (var row in pedidosPendientes) {
        Map<String, dynamic> newRow = Map.from(row);
        // Generamos un ID de sincronización o usamos la fecha
        newRow['mtsrecno'] = 'SYNC-${DateTime.now().millisecondsSinceEpoch}';
        pedidosParaSubir.add(newRow);
      }

      // C. Subimos a Supabase
      await supabase.from('mnotapedcab').upsert(pedidosParaSubir);

      // D. Actualizamos SQLite (Poner en VERDE)
      Batch batch = db.batch();
      for (var row in pedidosPendientes) {
        batch.update(
          'mnotapedcab',
          // Al poner un valor aquí, la Query del Timeline sabrá que es verde
          {'MTSRECNO': 'ENVIADO'},
          where: 'NOTAPEDID = ?',
          whereArgs: [row['NOTAPEDID']],
        );
      }
      await batch.commit(noResult: true);
      pedidosSubidos = pedidosPendientes.length;
    }

    // ---------------------------------------------------------
    // RESUMEN FINAL
    // ---------------------------------------------------------
    if (visitasSubidas == 0 && pedidosSubidos == 0) {
      return 'Todo está al día. No había datos pendientes.';
    }

    return 'Sincronización Completada: $visitasSubidas visitas y $pedidosSubidos pedidos enviados.';
  } catch (e) {
    return 'Error al subir datos: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
