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

// Automatic FlutterFlow imports (mantener sin cambios)

import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../backend/sqlite/sqlite_manager.dart';

Future<String> syncPedidosAbiertos(List<MclientesRow>? listaCodClientes) async {
  // Protección para null o vacío
  if (listaCodClientes == null || listaCodClientes.isEmpty) {
    return 'No hay clientes para sincronizar pedidos.';
  }

  // Convertimos los objetos MclientesRow → lista de códigos
  final List<String> codigosClientes =
      listaCodClientes.map((e) => e.codcli.toString()).toList();

  int totalImportados = 0;
  final List<String> estados = ['PENDIENTE', 'ABIERTO'];

  // --- Configuración para Chunking (División en trozos) ---
  const int chunkSize = 50; // Dividir la lista de clientes en trozos de 50
  final int totalChunks = (codigosClientes.length / chunkSize).ceil();
  // ---------------------------------------------------------

  try {
    final supabaseClient = Supabase.instance.client;
    final db = await SQLiteManager.instance.database;

    // Limpiar tabla local UNA SOLA VEZ antes de empezar la sincronización
    await db.execute('DELETE FROM mnotapedcab;');

    // Itera sobre todos los fragmentos de códigos de cliente
    for (int i = 0; i < totalChunks; i++) {
      // Obtener la sublista para el fragmento actual
      final int start = i * chunkSize;
      final int end = (start + chunkSize > codigosClientes.length)
          ? codigosClientes.length
          : start + chunkSize;

      final List<String> currentChunk = codigosClientes.sublist(start, end);

      // Paginación para resultados dentro de un solo fragmento de clientes
      int limit = 1000;
      int offset = 0;
      bool hayMasDatos = true;

      while (hayMasDatos) {
        // Ejecutar la solicitud con el fragmento de clientes más pequeño (soluciona el error 400)
        final response = await supabaseClient
            .from('mnotapedcab')
            .select('*')
            .inFilter('codclie', currentChunk) // Usar el fragmento actual
            .inFilter('estado', estados)
            .range(offset, offset + limit - 1);

        final List<dynamic> data = response;

        if (data.isEmpty) {
          hayMasDatos = false;
          break;
        }

        // Insert batch para los datos obtenidos
        final batch = db.batch();
        const table = 'mnotapedcab';

        // Lista de columnas para el INSERT
        const columns = [
          'NOTAPEDID',
          'NUMPEDIDO',
          'CODCLIE',
          'FINICIO',
          'HINICIO',
          'FFIN',
          'HFIN',
          'FENTREGA',
          'CODVEND',
          'CODCVTA',
          'TOTAL',
          'NETO',
          'ITEMS',
          'BONIFICACION',
          'OBSERVACIONES',
          'MTSRECNO',
          'LATITUD',
          'LONGITUD',
          'FECHAULTACT'
        ];

        // Crear la sentencia INSERT con los placeholders correctos
        final placeholders = List.filled(columns.length, '?').join(', ');
        final insertSql =
            '''INSERT OR REPLACE INTO $table (${columns.join(', ')}) VALUES ($placeholders)''';

        for (var item in data) {
          batch.rawInsert(
            insertSql,
            [
              item['notapedid'],
              item['numpedido'],
              item['codclie'],
              item['finicio'],
              item['hinicio'],
              item['ffin'],
              item['hfin'],
              item['fentrega'],
              item['codvend'],
              item['codcvta'],
              item['total'],
              item['neto'],
              item['items'],
              item['bonificacion'],
              item['observaciones'],
              item['mtsrecno'],
              item['latitud'],
              item['longitud'],
              item['fechaultact'],
            ],
          );
        }

        await batch.commit(noResult: true);

        totalImportados += data.length;
        offset += limit;

        if (data.length < limit) {
          hayMasDatos = false;
        }
      }
    }

    return 'Sincronización Exitosa: $totalImportados pedidos abiertos importados.';
  } catch (e) {
    // Es recomendable usar `FFAppState().update(() { FFAppState().debugLog = e.toString(); });` para ver el error completo en FlutterFlow si es necesario.
    return 'Error en Sincronización de Pedidos: $e';
  }
}
