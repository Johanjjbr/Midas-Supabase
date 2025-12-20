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

/// Sincroniza la tabla 'mlistacabe' (Encabezados de Lista) desde Supabase a
/// SQLite, sin paginación (asumiendo pocos registros).
Future<String> syncEncabezadosMasivo() async {
  try {
    // 1. Conexión a SQLite
    final db = await SQLiteManager.instance.database;

    // Opcional: Limpiar la tabla local antes de la sincronización
    await db.delete('mlistacabe');

    // 2. Consulta Única a Supabase
    // Al ser menos de 200, eliminamos la paginación.
    final response = await SupaFlow.client
        .from('mlistacabe') // Nombre de la tabla de Supabase
        .select('*'); // Traemos todas las columnas

    final List<dynamic> data = response as List<dynamic>;

    if (data.isEmpty) {
      return 'Sincronización completa: 0 encabezados para importar.';
    }

    // 3. Preparamos el Batch de SQLite
    final batch = db.batch();

    for (var row in data) {
      // Mapeo manual seguro de las columnas de mlistacabe
      batch.rawInsert(
        '''INSERT OR REPLACE INTO mlistacabe (
             CODLISTA, LISTADESCRIP, OBSLISTA, ESTADO, 
             VIGENTEDESDE, VIGENTEHASTA, FECHAULTACT
           ) VALUES (?, ?, ?, ?, ?, ?, ?)''',
        [
          // **NOTA: Asegúrate de que 'codlista' sea el nombre de la columna en Supabase**
          row['codlista'],
          row['listadescrip'] ?? '',
          row['obslista'] ?? '',
          row['estado'] ?? '',
          // Las fechas (date) pueden necesitar un manejo de formato/tipo si son nulas o Strings
          row['vigentedesde']?.toString() ?? '',
          row['vigentehasta']?.toString() ?? '',
          row['fechaultact']?.toString() ?? '', // Timestamp
        ],
      );
    }

    // 4. Ejecutamos el lote
    await batch.commit(noResult: true);

    int totalImportados = data.length;

    return 'Sincronización completa: $totalImportados encabezados importados.';
  } catch (e) {
    // Un simple `e.toString()` puede ser más legible que solo `e`
    return 'Error en Sync de Encabezados: ${e.toString()}';
  }
}
