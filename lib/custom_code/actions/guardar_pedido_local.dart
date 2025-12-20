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
import '../../backend/sqlite/sqlite_manager.dart';

Future<bool> guardarPedidoLocal(
  dynamic cabecera,
  List<dynamic> detalles,
) async {
  final db = await SQLiteManager.instance.database;

  try {
    await db.transaction((txn) async {
      // 1. Insertar Encabezado (mnotapedcab)
      await txn.rawInsert('''
        INSERT INTO mnotapedcab (
          NOTAPEDID, NUMPEDIDO, CODCLIE, FINICIO, HINICIO, 
          FFIN, HFIN, FENTREGA, CODVEND, CODCVTA, 
          TOTAL, NETO, ITEMS, BONIFICACION, OBSERVACIONES, 
          MTSRECNO, LATITUD, LONGITUD
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      ''', [
        cabecera['notapedid'],
        cabecera['numpedido'],
        cabecera['codclie'],
        cabecera['finicio'],
        cabecera['hinicio'],
        cabecera['ffin'],
        cabecera['hfin'],
        cabecera['fentrega'],
        cabecera['codvend'],
        cabecera['codcvta'],
        cabecera['total'],
        cabecera['neto'],
        cabecera['items_count'],
        cabecera['bonificacion'],
        cabecera['observaciones'],
        '', // MTSRECNO vacío para punto ROJO
        cabecera['latitud'],
        cabecera['longitud']
      ]);

      // 2. Insertar Detalles (mnotapedite)
      for (var item in detalles) {
        await txn.rawInsert('''
          INSERT INTO mnotapedite (
            NOTAPEDID, RENGLON, NUMPEDIDO, CODCLIE, CODARTI, 
            CANTIDAD, IMPUNIORIG, IMPOUNITARIO, BONIFICACION, 
            IMPOBONIFICA, ALICUOTAIVA, LISTPREC, FECULTACT, ABM
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        ''', [
          cabecera['notapedid'], // Relación con la cabecera
          item['renglon'],
          cabecera['numpedido'],
          cabecera['codclie'],
          item['codarti'],
          item['cantidad'],
          item['impuniorig'],
          item['impounitario'],
          item['bonificacion'],
          item['impobonifica'],
          item['alicuotaiva'],
          item['listprec'],
          DateTime.now().toIso8601String(),
          'A'
        ]);
      }
    });
    return true;
  } catch (e) {
    print('Error: $e');
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
