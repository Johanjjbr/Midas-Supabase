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
import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../backend/sqlite/sqlite_manager.dart';

Future<String> syncVisitas(List<MclientesRow>? listaCodClientes) async {
  // 1. Validación inicial
  if (listaCodClientes == null || listaCodClientes.isEmpty) {
    return 'No hay clientes para sincronizar visitas.';
  }

  // 2. Extraer solo los IDs de los clientes
  final List<String> codigosClientes =
      listaCodClientes.map((e) => e.codcli.toString()).toList();

  int totalImportados = 0;

  // --- Configuración para Chunking (Lotes) ---
  const int chunkSize = 50;
  final int totalChunks = (codigosClientes.length / chunkSize).ceil();
  // ---------------------------------------------------------

  try {
    final supabaseClient = Supabase.instance.client;
    final db = await SQLiteManager.instance.database;

    // 3. Limpiar tabla local ANTES de empezar
    await db.execute('DELETE FROM mvisitas;');

    // 4. Iterar sobre los lotes de clientes
    for (int i = 0; i < totalChunks; i++) {
      final int start = i * chunkSize;
      final int end = (start + chunkSize > codigosClientes.length)
          ? codigosClientes.length
          : start + chunkSize;

      final List<String> currentChunk = codigosClientes.sublist(start, end);

      int limit = 1000;
      int offset = 0;
      bool hayMasDatos = true;

      while (hayMasDatos) {
        // Consulta a Supabase
        final response = await supabaseClient
            .from('mvisitas')
            .select('*')
            .inFilter('codcli',
                currentChunk) // Filtramos por clientes del lote actual
            .range(offset, offset + limit - 1);

        final List<dynamic> data = response;

        if (data.isEmpty) {
          hayMasDatos = false;
          break;
        }

        // 5. Insertar en SQLite
        final batch = db.batch();
        const table = 'mvisitas';

        // Columnas exactas de tu tabla SQLite
        const columns = [
          'VISITASID',
          'CODCLI',
          'FECHA',
          'HORA',
          'CODNOCPRA',
          'LATITUD',
          'LONGITUD',
          'OBSERVACIONES',
          'CODVENDEDOR',
          'FECULTACT',
          'ABM'
        ];

        // Crear placeholders
        final placeholders = List.filled(columns.length, '?').join(', ');

        final insertSql =
            '''INSERT OR REPLACE INTO $table (${columns.join(', ')}) VALUES ($placeholders)''';

        for (var item in data) {
          batch.rawInsert(
            insertSql,
            [
              item['visitasid'],
              item['codcli'],
              item['fecha'], // String YYYY-MM-DD
              item['hora'], // String HH:MM:SS
              item['codnocpra'],
              item['latitud'], // Numeric -> Real/Double
              item['longitud'], // Numeric -> Real/Double
              item['observaciones'], // Puede ser null
              item['codvendedor'],
              item['fecultact'],
              item['abm'],
            ],
          );
        }

        await batch.commit(noResult: true);

        totalImportados += data.length;
        offset += limit;

        if (data.length < limit) {
          hayMasDatos = false;
        }
      }
    }

    return 'Sincronización Exitosa: $totalImportados visitas importadas.';
  } catch (e) {
    return 'Error en Sincronización de Visitas: $e';
  }
}
