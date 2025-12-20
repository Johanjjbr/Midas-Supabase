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

/// Sincroniza masivamente todos los articulos
Future<String> syncArticulosMasivo() async {
  try {
    // 1. Conexión a SQLite
    final db = await SQLiteManager.instance.database;

    // Opcional: Borrar tabla vieja antes de empezar para asegurar limpieza
    // await db.delete('marticulos');

    // 2. Configuración de paginación
    int limit = 1000; // Traemos de 1000 en 1000
    int offset = 0;
    bool hayMasDatos = true;
    int totalImportados = 0;

    // 3. Bucle para traer todo
    while (hayMasDatos) {
      // Consultamos a Supabase directamente usando el cliente raw
      // range(start, end) es la clave aquí.
      final response = await SupaFlow.client
          .from('marticulos')
          .select('*') // Traemos todas las columnas
          .range(offset, offset + limit - 1);

      // Verificamos si la lista está vacía (fin de los datos)
      final List<dynamic> data = response as List<dynamic>;

      if (data.isEmpty) {
        hayMasDatos = false;
        break;
      }

      // 4. Preparamos el Batch de SQLite
      final batch = db.batch();

      for (var row in data) {
        // Mapeo manual seguro (row es un Map<String, dynamic>)
        // Usamos row['campo'] y protegemos los nulos con ?? '' o ?? 0
        batch.rawInsert(
          '''INSERT OR REPLACE INTO marticulos (
            CODARTI, ARTDESCRIP, CODBARRA, CODGRUPO, CODPROV, 
            COSTO, PRECIO1, PRECIO2, PRECIO3, IMPINTERNO, 
            CODALIC, IMPINTFIJO, UNIMED, ARTFOTO, MONEDA, 
            MARCA, CARACT, IMPUESTO_FIJO, CODIGOREFERENCIA, 
            FACTORPUNTOS, FECHAULTACT
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)''',
          [
            row['codcli'] ??
                row['codarti'], // A veces FF cambia nombres, asegúrate que sea el de Supabase
            row['artdescrip'],
            row['codbarra'],
            row['codgrupo'] ?? '', // Protección NOT NULL
            row['codprov'],
            row['costo'] ?? 0.0,
            row['precio1'] ?? 0.0,
            row['precio2'] ?? 0.0,
            row['precio3'] ?? 0.0,
            row['impinterno'] ?? 0.0,
            row['codalic'],
            row['impintfijo'] ?? 0.0,
            row['unimed'],
            row['artfoto'],
            row['moneda'],
            row['marca'] ?? '', // Protección NOT NULL
            row['caract'] ?? '', // Protección NOT NULL
            row['impuesto_fijo'] ??
                0.0, // Ojo: en JSON suele venir como snake_case
            row['codigoreferencia'] ?? '', // Protección NOT NULL
            row['factorpuntos'] ?? 0.0,
            row['fechaultact']?.toString()
          ],
        );
      }

      // Ejecutamos este lote de 1000
      await batch.commit(noResult: true);

      totalImportados += data.length;

      // Si trajimos menos del límite, significa que era la última página
      if (data.length < limit) {
        hayMasDatos = false;
      } else {
        // Preparamos el offset para la siguiente vuelta
        offset += limit;
      }
    }

    return 'Sincronización completa: $totalImportados artículos importados.';
  } catch (e) {
    return 'Error en Sync Masiva: $e';
  }
}
