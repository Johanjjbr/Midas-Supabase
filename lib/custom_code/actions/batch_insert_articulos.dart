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
import '../../backend/sqlite/sqlite_manager.dart';
import '../../backend/supabase/supabase.dart'; // Importante para reconocer MarticulosRow

/// NOTA: Asegúrate de que el argumento de entrada se llame 'dataList' y sea
/// de tipo List <Row> (de tu tabla marticulos de Supabase)
Future<String> batchInsertArticulos(List<MarticulosRow>? dataList) async {
  // 1. Verificación de seguridad
  if (dataList == null || dataList.isEmpty) {
    return 'No hay artículos para sincronizar (Lista vacía o nula)';
  }

  try {
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    for (var item in dataList) {
      batch.rawInsert(
        '''INSERT OR REPLACE INTO marticulos (
          CODARTI, ARTDESCRIP, CODBARRA, CODGRUPO, CODPROV, 
          COSTO, PRECIO1, PRECIO2, PRECIO3, IMPINTERNO, 
          CODALIC, IMPINTFIJO, UNIMED, ARTFOTO, MONEDA, 
          MARCA, CARACT, IMPUESTO_FIJO, CODIGOREFERENCIA, 
          FACTORPUNTOS, FECHAULTACT
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)''',
        [
          item.codarti,
          item.artdescrip,
          item.codbarra,
          // --- CORRECCIÓN AQUÍ ---
          // Si codgrupo es null, insertamos un texto vacío para que SQLite no falle.
          item.codgrupo ?? '',
          // -----------------------
          item.codprov,
          item.costo,
          item.precio1,
          item.precio2,
          item.precio3,
          item.impinterno,
          item.codalic,
          item.impintfijo,
          item.unimed,
          item.artfoto,
          item.moneda,
          // Protegemos otros campos NOT NULL también:
          item.marca ?? '',
          item.caract ?? '',
          item.impuestoFijo,
          item.codigoreferencia ?? '',
          item.factorpuntos,
          item.fechaultact?.toString()
        ],
      );
    }

    await batch.commit(noResult: true);
    return 'Éxito: ${dataList.length} artículos importados.';
  } catch (e) {
    return 'Error Batch Insert Articulos: $e';
  }
}
