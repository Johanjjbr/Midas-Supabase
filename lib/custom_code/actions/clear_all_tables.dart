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

// Imports
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import '../../backend/sqlite/sqlite_manager.dart';

Future<String> clearAllTables() async {
  try {
    // 1. Obtener la instancia de la base de datos
    final db = await SQLiteManager.instance.database;

    // 2. Obtener los nombres de TODAS las tablas (excluyendo las internas de sistema)
    final List<Map<String, dynamic>> tables = await db.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' AND name != 'android_metadata'");

    // 3. Ejecutar el borrado dentro de una transacción (más rápido y seguro)
    await db.transaction((txn) async {
      // Desactivamos temporalmente las llaves foráneas para evitar errores de restricción
      await txn.execute('PRAGMA foreign_keys = OFF');

      for (var table in tables) {
        String tableName = table['name'] as String;
        // Borramos todo el contenido de la tabla
        await txn.delete(tableName);
      }

      // Volvemos a activar las llaves foráneas
      await txn.execute('PRAGMA foreign_keys = ON');
    });

    return 'Base de datos limpiada correctamente.';
  } catch (e) {
    return 'Error al limpiar DB: $e';
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
