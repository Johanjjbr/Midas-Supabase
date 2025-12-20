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

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';
// DO NOT REMOVE ABOVE

import 'package:sqflite/sqflite.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'dart:async';

Future<String> syncStockPorDeposito(String? codigoDeposito) async {
  if (codigoDeposito == null || codigoDeposito.trim().isEmpty) {
    return 'Error: Código de depósito vacío.';
  }

  try {
    final supa = SupaFlow.client;
    final db = await SQLiteManager.instance.database;

    const int limit = 1000;
    int offset = 0;
    bool hayMas = true;
    int totalImportados = 0;

    // 1) LIMPIEZA por depósito
    await db.delete(
      'mmstock',
      where: 'CODDEPO = ?',
      whereArgs: [codigoDeposito],
    );

    while (hayMas) {
      // 2) Consulta paginada DESDE EL VIEW
      final response = await supa
          .from('mmstock_normalizado')
          .select('*')
          .eq('coddepo', codigoDeposito)
          .range(offset, offset + limit - 1);

      final rows = response as List<dynamic>;

      if (rows.isEmpty) {
        hayMas = false;
        break;
      }

      // 3) INSERTAR EN SQLITE
      final batch = db.batch();

      for (final r in rows) {
        final codarti = r['codarti']?.toString() ?? '';
        final coddepo = r['coddepo']?.toString() ?? '';
        final cant = double.tryParse(r['cantstock']?.toString() ?? '0') ?? 0.0;
        final fecha = r['fechaultact']?.toString() ?? '';

        batch.rawInsert(
          '''
          INSERT OR REPLACE INTO mmstock (
            CODARTI, CODDEPO, CANTSTOCK, FECHAULTACT
          ) VALUES (?, ?, ?, ?)
        ''',
          [codarti, coddepo, cant, fecha],
        );
      }

      await batch.commit(noResult: true);

      totalImportados += rows.length;

      // 4) Continuar paginando
      if (rows.length < limit) {
        hayMas = false;
      } else {
        offset += limit;
      }
    }

    return 'Stock sincronizado correctamente para depósito $codigoDeposito. '
        'Total registros importados: $totalImportados';
  } catch (e) {
    return 'Error en syncStockPorDeposito: $e';
  }
}
