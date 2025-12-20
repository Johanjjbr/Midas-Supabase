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

// Imports
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../../backend/sqlite/sqlite_manager.dart';
import '../../backend/supabase/supabase.dart';

Future<String> batchInsertMonedas(List<MmonedasRow>? dataList) async {
  // 1. Validación de seguridad
  if (dataList == null || dataList.isEmpty) {
    return 'No hay monedas para sincronizar (Lista vacía o nula)';
  }

  try {
    // 2. Instancia de la DB
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    // 3. Sentencia SQL con los nombres EXACTOS de tu tabla
    const sqlInsert = '''
      INSERT OR REPLACE INTO mmonedas (
        CODMONE, MONEDESCRIP, VALMONE, FECHAULTACT
      ) VALUES (?, ?, ?, ?)
    ''';

    // 4. Mapeo de datos
    for (var item in dataList) {
      batch.rawInsert(
        sqlInsert,
        [
          item.codmone, // TEXT NOT NULL PRIMARY KEY
          item.monedescrip, // TEXT
          item.valmone, // REAL (Esto maneja decimales/double)
          item.fechaultact?.toString() // TEXT (Para sincronización)
        ],
      );
    }

    // 5. Ejecutar Batch
    await batch.commit(noResult: true);

    return 'Éxito: ${dataList.length} monedas importadas.';
  } catch (e) {
    return 'Error Batch Insert Monedas: $e';
  }
}
