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

/// Custom Action:
/// - Entrada: lista de filas de mlistacabe (List<dynamic> o List<MlistacabeRow>)
/// - Salida: String resumen
Future<String> syncPreciosPorEncabezados(
    List<MlistacabeRow>? encabezados) async {
  if (encabezados == null || encabezados.isEmpty) {
    return 'No hay encabezados para procesar.';
  }

  // Helper para extraer codlista de forma robusta
  String? _extractCodLista(dynamic row) {
    try {
      if (row == null) return null;
      // Si es Map (JSON)
      if (row is Map) {
        // intentamos varias keys (minúscula/Mayúscula)
        final possible = [
          'codlista',
          'CODLISTA',
          'codLista',
          'CodLista',
          'Codlista'
        ];
        for (final k in possible) {
          if (row.containsKey(k) && row[k] != null) {
            return row[k].toString().trim();
          }
        }
      }
      // Si es el Row tipado generado por FF (getter)
      // Intentamos acceder por propiedad
      final dynamic val = row.codlista ?? row.CODLISTA ?? row.codLista;
      if (val != null) return val.toString().trim();

      // Si nada funcionó
      return null;
    } catch (e) {
      return null;
    }
  }

  try {
    final Database db = await SQLiteManager.instance.database;
    final SupabaseClient supa = SupaFlow.client;

    // Límites de paginación
    const int limit = 1000;

    int totalImportados = 0;
    final Map<String, int> importPorLista = {};

    // Recorremos cada encabezado
    for (final enc in encabezados) {
      final codlista = _extractCodLista(enc);
      if (codlista == null || codlista.isEmpty) {
        // saltamos si no hay código
        continue;
      }

      // 1) Borramos los precios locales para esa lista (limpieza por lista)
      await db.delete(
        'mlistasprecios',
        where: 'codlista = ?',
        whereArgs: [codlista],
      );

      // 2) Paginación por lista
      int offset = 0;
      bool hayMas = true;
      int importadosEstaLista = 0;

      while (hayMas) {
        // Consulta paginada filtrando por codlista
        final response = await supa
            .from('mlistasprecios')
            .select('*')
            .eq('codlista', codlista)
            .range(offset, offset + limit - 1);

        // response debería ser List<dynamic>
        final List<dynamic> rows = response as List<dynamic>;

        if (rows.isEmpty) {
          hayMas = false;
          break;
        }

        final batch = db.batch();

        for (final r in rows) {
          // r puede venir con keys en minúscula o mayúscula; intentamos ambas
          String? _get(dynamic map, String keyLower, String keyUpper) {
            try {
              if (map is Map) {
                if (map.containsKey(keyLower) && map[keyLower] != null) {
                  return map[keyLower].toString();
                }
                if (map.containsKey(keyUpper) && map[keyUpper] != null) {
                  return map[keyUpper].toString();
                }
              }
              // Si es row tipado
              final dyn = map;
              final prop = dyn?.toJson != null ? null : null;
              // no hacemos más suposiciones; retornamos null si no encontramos
              return null;
            } catch (e) {
              return null;
            }
          }

          final codarti = _get(r, 'codarti', 'CODARTI') ?? '';
          final descripart = _get(r, 'descripart', 'DESCRIPART') ?? '';
          final fechaultact = _get(r, 'fechaultact', 'FECHAULTACT') ??
              (r['fechaultact']?.toString() ?? null);
          final importeRaw =
              (r is Map && (r['importe'] != null || r['IMPORTE'] != null))
                  ? (r['importe'] ?? r['IMPORTE'])
                  : null;
          final ivaRaw = (r is Map && (r['iva'] != null || r['IVA'] != null))
              ? (r['iva'] ?? r['IVA'])
              : null;

          final importe = (importeRaw == null)
              ? 0.0
              : double.tryParse(importeRaw.toString()) ?? 0.0;
          final iva = (ivaRaw == null)
              ? 0.0
              : double.tryParse(ivaRaw.toString()) ?? 0.0;

          batch.rawInsert(
            '''INSERT OR REPLACE INTO mlistasprecios (
              codlista, codarti, descripart, fechaultact, importe, iva
            ) VALUES (?, ?, ?, ?, ?, ?)''',
            [
              codlista,
              codarti,
              descripart,
              fechaultact?.toString(),
              importe,
              iva,
            ],
          );
        }

        await batch.commit(noResult: true);

        importadosEstaLista += rows.length;
        totalImportados += rows.length;

        // avanzar offset o terminar
        if (rows.length < limit) {
          hayMas = false;
        } else {
          offset += limit;
        }
      } // end pagination for this codlista

      importPorLista[codlista] = importadosEstaLista;
    } // end for encabezados

    // Resumen
    final buffer = StringBuffer();
    buffer
        .writeln('Sincronización completa. Total importados: $totalImportados');
    importPorLista.forEach((k, v) {
      buffer.writeln(' - $k : $v registros');
    });

    return buffer.toString();
  } catch (e) {
    return 'Error en syncPreciosPorEncabezados: $e';
  }
}
