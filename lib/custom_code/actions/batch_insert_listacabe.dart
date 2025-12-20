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

/// Trae los Encabezados de ls lista de encabezados
Future<String> batchInsertListacabe(List<MlistacabeRow>? dataList) async {
  // 1. Validación inicial
  if (dataList == null || dataList.isEmpty) {
    return 'No hay encabezados de lista de precios para sincronizar (Lista vacía o nula)';
  }

  try {
    // 2. Obtener referencia a la BD y crear el lote (batch)
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();
    int count = 0;

    // 3. Recorremos la lista de encabezados traída de Supabase
    for (var item in dataList) {
      count++;

      // La sentencia INSERT OR REPLACE garantiza que si el CODLISTA ya existe,
      // se actualicen los demás campos.
      batch.rawInsert(
        '''INSERT OR REPLACE INTO mlistacabe (
          CODLISTA, 
          LISTADESCRIP, 
          OBSLISTA, 
          ESTADO, 
          VIGENTEDESDE, 
          VIGENTEHASTA,
          FECHAULTACT
        ) VALUES (?, ?, ?, ?, ?, ?, ?)''',
        [
          // **IMPORTANTE**: Usar .trim() para limpiar los espacios del tipo CHAR/BPCHAR
          item.codlista.trim(),
          item.listadescrip?.trim(),
          item.obslista?.trim(),
          item.estado?.trim(),

          // Conversión de fechas a String ISO 8601 (TEXT en SQLite)
          item.vigentedesde?.toIso8601String(),
          item.vigentehasta?.toIso8601String(),
          item.fechaultact?.toIso8601String(),
        ],
      );
    }

    // 4. Ejecutar el lote
    await batch.commit(noResult: true);
    return 'Éxito: $count encabezados de lista de precios importados.';
  } catch (e) {
    // 5. Manejo de errores
    return '❌ Error Batch Insert Listacabe: ${e.toString()}';
  }
}
