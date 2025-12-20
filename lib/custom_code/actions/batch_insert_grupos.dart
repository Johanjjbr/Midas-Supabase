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

// Imports (asegúrate de que esten arriba, como en los ejemplos anteriores)
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../../backend/sqlite/sqlite_manager.dart';
import '../../backend/supabase/supabase.dart';

Future<String> batchInsertGrupos(List<MgruposRow>? dataList) async {
  // 1. Validación de seguridad
  if (dataList == null || dataList.isEmpty) {
    return 'No hay grupos para sincronizar (Lista vacía o nula)';
  }

  try {
    // 2. Obtener instancia de la base de datos
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    // 3. Definimos la consulta SQL
    // Usamos INSERT OR REPLACE para actualizar si el CODGRUPO ya existe
    const sqlInsert = '''
      INSERT OR REPLACE INTO mgrupos (
        CODGRUPO, GRUPDESC, FECHAULTACT
      ) VALUES (?, ?, ?)
    ''';

    // 4. Iteramos sobre los datos
    for (var item in dataList) {
      batch.rawInsert(
        sqlInsert,
        [
          item.codgrupo, // TEXT NOT NULL PRIMARY KEY
          item.grupdesc, // TEXT
          item.fechaultact
              ?.toString() // TEXT NOT NULL (Convertimos DateTime a String)
        ],
      );
    }

    // 5. Ejecutamos el lote (Batch)
    await batch.commit(noResult: true);

    return 'Éxito: ${dataList.length} grupos importados.';
  } catch (e) {
    return 'Error Batch Insert Grupos: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
