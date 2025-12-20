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

import 'package:sqflite/sqflite.dart';
import 'dart:async';

Future<String> batchInsertPrecios(List<MlistaspreciosRow>? dataList) async {
  // 1. Validación inicial
  if (dataList == null || dataList.isEmpty) {
    return 'No hay precios para sincronizar (Lista vacía o nula)';
  }

  try {
    // 2. Obtener referencia a la BD
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    // 3. Recorremos la lista de precios traída de Supabase
    for (var item in dataList) {
      batch.rawInsert(
        '''INSERT OR REPLACE INTO mlistasprecios (
          CODLISTA, 
          CODARTI, 
          DESCRIPART, 
          FECHAULTACT, 
          IMPORTE, 
          IVA
        ) VALUES (?, ?, ?, ?, ?, ?)''',
        [
          item.codlista, // Clave primaria parte 1
          item.codarti, // Clave primaria parte 2
          item.descripart, // Descripción
          item.fechaultact?.toIso8601String(), // Convertir fecha a String ISO
          item.importe, // Numeric -> Real/Double
          item.iva // Numeric -> Real/Double
        ],
      );
    }

    // 4. Ejecutar el lote
    await batch.commit(noResult: true);
    return 'Éxito: ${dataList.length} precios importados.';
  } catch (e) {
    return 'Error Batch Insert Precios: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
