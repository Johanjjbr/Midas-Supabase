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
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../backend/sqlite/sqlite_manager.dart';

Future<String> syncCtaCte(List<MclientesRow>? listaCodClientes) async {
  // 1. Validación inicial
  if (listaCodClientes == null || listaCodClientes.isEmpty) {
    return 'No hay clientes para sincronizar Cta Cte.';
  }

  // 2. Extraer solo los IDs de los clientes de la lista
  final List<String> codigosClientes =
      listaCodClientes.map((e) => e.codcli.toString()).toList();

  int totalImportados = 0;

  // --- Configuración para Chunking (Lotes) ---
  // Supabase tiene un límite en la longitud de la URL, por eso enviamos de 50 en 50
  const int chunkSize = 50;
  final int totalChunks = (codigosClientes.length / chunkSize).ceil();
  // ---------------------------------------------------------

  try {
    final supabaseClient = Supabase.instance.client;
    final db = await SQLiteManager.instance.database;

    // 3. Limpiar tabla local ANTES de empezar
    // Borramos todo para volver a llenar con datos frescos y evitar duplicados viejos
    await db.execute('DELETE FROM mctacte;');

    // 4. Iterar sobre los lotes de clientes
    for (int i = 0; i < totalChunks; i++) {
      // Calcular inicio y fin del lote actual
      final int start = i * chunkSize;
      final int end = (start + chunkSize > codigosClientes.length)
          ? codigosClientes.length
          : start + chunkSize;

      final List<String> currentChunk = codigosClientes.sublist(start, end);

      // Paginación interna de Supabase (por si un lote de 50 clientes tiene miles de facturas)
      int limit = 1000;
      int offset = 0;
      bool hayMasDatos = true;

      while (hayMasDatos) {
        // Consulta a Supabase
        final response = await supabaseClient
            .from('mctacte')
            .select('*')
            .inFilter('codcli',
                currentChunk) // <-- Aquí filtramos por los clientes de este lote
            .range(offset, offset + limit - 1);

        final List<dynamic> data = response;

        if (data.isEmpty) {
          hayMasDatos = false;
          break;
        }

        // 5. Insertar en SQLite
        final batch = db.batch();
        const table = 'mctacte';

        // Definimos las columnas tal cual tu estructura de SQLite
        const columns = [
          'CODCLI',
          'RAZONSOC',
          'CODALIC',
          'FECHAEMI',
          'CODVEND',
          'LETRA',
          'PREFIJO',
          'NUMCPBTE',
          'CUOTA',
          'NDAS',
          'RECNO',
          'IMPORIG',
          'IMPOCANC',
          'TOTAL',
          'VENC',
          'CCOSTO',
          'CODCVTA',
          'CODMONE',
          'TDNDAS',
          'CODCOM',
          'RENGLON',
          'CODSUC',
          'FECHAULTACT'
        ];

        // Crear placeholders (?, ?, ?)
        final placeholders = List.filled(columns.length, '?').join(', ');

        // Usamos INSERT OR REPLACE para manejar conflictos si RECNO+RENGLON ya existen
        final insertSql =
            '''INSERT OR REPLACE INTO $table (${columns.join(', ')}) VALUES ($placeholders)''';

        for (var item in data) {
          batch.rawInsert(
            insertSql,
            [
              item['codcli'],
              item['razonsoc'],
              item['codalic'],
              item[
                  'fechaemi'], // Supabase envía YYYY-MM-DD, SQLite lo guarda como texto
              item['codvend'],
              item['letra'],
              item['prefijo'],
              item['numcpbte'],
              item['cuota'],
              item['ndas'],
              item['recno'],
              item['imporig'],
              item['impocanc'],
              item['total'], // Importante: Numeric se guarda como REAL
              item['venc'],
              item['ccosto'],
              item['codcvta'],
              item['codmone'],
              item['tdndas'],
              item['codcom'],
              item['renglon'],
              item['codsuc'],
              item['fechaultact'],
            ],
          );
        }

        await batch.commit(noResult: true);

        totalImportados += data.length;
        offset += limit;

        // Si trajimos menos del límite, es que ya no hay más registros para este lote de clientes
        if (data.length < limit) {
          hayMasDatos = false;
        }
      }
    }

    return 'Sincronización Exitosa: $totalImportados registros de Cta Cte importados.';
  } catch (e) {
    return 'Error en Sincronización de Cta Cte: $e';
  }
}
