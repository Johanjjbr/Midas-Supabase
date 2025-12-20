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

// Imports (ya están en tu encabezado, pero se repiten para contexto)
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../../backend/sqlite/sqlite_manager.dart';
import '../../backend/supabase/supabase.dart';
// Importante: Asume que MmarcasRow es una clase/estructura generada por FlutterFlow/Supabase.

/// Inserta o reemplaza una lista de marcas en la tabla 'mmarcas' de SQLite.
Future<String> batchInsertMarcas(List<MmarcasRow>? dataList) async {
  // Manejo de lista nula o vacía
  if (dataList == null || dataList.isEmpty) {
    return 'No hay marcas para sincronizar (Lista vacía o nula)';
  }

  try {
    // 1. Obtener la instancia de la base de datos
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    // 2. Definición del SQL para inserción/reemplazo
    const sqlInsert = '''
      INSERT OR REPLACE INTO mmarcas (
        CODMARCA, DESCRIPMARCA, FECHAULTACT
      ) VALUES (?, ?, ?)
    ''';

    // 3. Recorrer la lista y añadir las operaciones al batch
    for (var item in dataList) {
      batch.rawInsert(
        sqlInsert,
        [
          // Mapeo de campos:
          item.codmarca?.trim(), // Usamos .trim() por si es CHARACTER(6)
          item.descripmarca,
          item.fechaultact
              ?.toString(), // Convertir DateTime a String (ISO 8601)
        ],
      );
    }

    // 4. Ejecutar el batch
    await batch.commit(noResult: true);

    return 'Éxito: ${dataList.length} marcas importadas.';
  } catch (e) {
    return 'Error Batch Insert Marcas: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
