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
import '../../backend/supabase/supabase.dart'; // Importante para reconocer MclientesRow

Future<String> batchInsertClientes1(List<MclientesRow>? dataList) async {
  // 1. ARREGLADO: Manejo de nulo1s.
  // Si la lista es null o está vacía, retornamos mensaje y salimos.
  if (dataList == null || dataList.isEmpty) {
    return 'No hay clientes para sincronizar (Lista vacía o nula)';
  }

  try {
    // 2. ARREGLADO: 'await' ahora funcionará porque añadimos 'async' arriba.
    final db = await SQLiteManager.instance.database;
    final batch = db.batch();

    // 3. Recorremos la lista de forma segura
    for (var item in dataList) {
      batch.rawInsert(
        '''INSERT OR REPLACE INTO mclientes (
          CODCLI, RAZONSOC, DOMICILIO, LOCALIDAD, PCIA, CODPOSTAL, 
          TELEFONO, EMAIL, RESPTRIB, CUIT, PRECIODEFAULT, LIMITE, 
          VENCODI, ZONA, TXTNOTA, CODCVTA, CATE_CLI, INACTIVO, 
          BARRIO, PAIS, CODDESC, CENTRALIZADOR, LISTAPREC, COBRADOR, 
          HOJARUTA, ORDENRUTA, DIAVISITA, NOEXPORTAMOBILE, NOUSAPRECPORCANT, FECHAULTACT
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)''',
        [
          item.codcli,
          item.razonsoc,
          item.domicilio,
          item.localidad,
          item.pcia,
          item.codpostal,
          item.telefono,
          item.email,
          item.resptrib,
          item.cuit,
          item.preciodefault,
          item.limite,
          item.vencodi,
          item.zona,
          item.txtnota,
          item.codcvta,
          item.cateCli,
          item.inactivo,
          item.barrio,
          item.pais,
          item.coddesc,
          item.centralizador,
          item.listaprec,
          item.cobrador,
          item.hojaruta,
          item.ordenruta,
          item.diavisita,
          item.noexportamobile,
          item.nousaprecporcant,
          item.fechaultact?.toString()
        ],
      );
    }

    await batch.commit(noResult: true);
    return 'Éxito: ${dataList.length} clientes importados.';
  } catch (e) {
    return 'Error Batch Insert: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
