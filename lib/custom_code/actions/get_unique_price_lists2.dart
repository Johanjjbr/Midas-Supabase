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

import 'index.dart'; // Imports other custom actions

Future<List<String>> getUniquePriceLists2(
    List<MclientesRow> clientsList) async {
  // Creamos un Set para almacenar las listas sin duplicados
  final Set<String> uniqueLists = {};

  // Iteramos sobre la lista de Objetos (Rows) directamente
  for (var cliente in clientsList) {
    // Accedemos a la propiedad directamente usando el punto (.)
    // Ya no es necesario usar corchetes ni strings 'listaprec'
    final lista = cliente.listaprec;

    // Verificamos que no sea null y limpiamos espacios
    if (lista != null && lista.trim().isNotEmpty) {
      uniqueLists.add(lista.trim());
    }
  }

  return uniqueLists.toList();
}
