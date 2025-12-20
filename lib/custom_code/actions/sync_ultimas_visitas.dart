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

Future<String> syncUltimasVisitas(List<MclientesRow>? listaCodClientes) async {
  if (listaCodClientes == null || listaCodClientes.isEmpty) {
    return 'No hay clientes para sincronizar visitas.';
  }

  // Convertimos MclientesRow → List<String>
  final List<String> listaCodCli = listaCodClientes
      .map((item) => item.codcli)
      .where((e) => e != null)
      .cast<String>()
      .toList();

  int limit = 1000;
  int offset = 0;
  bool hayMasDatos = true;
  int totalImportados = 0;

  try {
    final supabaseClient = Supabase.instance.client;
    final db = await SQLiteManager.instance.database;

    // Limpiamos tabla local
    await db.execute('DELETE FROM mvisitas;');

    while (hayMasDatos) {
      final response = await supabaseClient
          .from('vista_ultima_visita')
          .select('*')
          .inFilter('codcli', listaCodCli)
          .range(offset, offset + limit - 1);

      // AHORA response **ya es una lista**, no un objeto con .data
      if (response == null || response.isEmpty) {
        hayMasDatos = false;
        break;
      }

      final List<dynamic> data = response;

      final batch = db.batch();

      for (var item in data) {
        batch.rawInsert(
          '''
          INSERT OR REPLACE INTO mvisitas (
            codcli, fecha, hora, observaciones, codvend, fechaultact
          ) VALUES (?, ?, ?, ?, ?, ?)
          ''',
          [
            item['codcli'],
            item['fecha'],
            item['hora'],
            item['observaciones'],
            item['codvend'],
            item['fechaultact'],
          ],
        );
      }

      await batch.commit(noResult: true);
      totalImportados += data.length;

      if (data.length < limit) {
        hayMasDatos = false;
      } else {
        offset += limit;
      }
    }

    return 'Sincronización Exitosa: $totalImportados últimas visitas importadas.';
  } catch (e) {
    return 'Error en Sincronización de Visitas: $e';
  }
}
