<<<<<<< HEAD
import '/backend/backend.dart';
=======
import '/backend/sqlite/sqlite_manager.dart';
import '/backend/supabase/supabase.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
<<<<<<< HEAD
import '/index.dart';
import 'load_pageif_login_widget.dart' show LoadPageifLoginWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
=======
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'load_pageif_login_widget.dart' show LoadPageifLoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:provider/provider.dart';

class LoadPageifLoginModel extends FlutterFlowModel<LoadPageifLoginWidget> {
  ///  Local state fields for this page.

<<<<<<< HEAD
  double? load = 0.2;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  MdepositoRecord? mdepositoss;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MgruposRecord>? gruposDes;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MarticulosRecord>? articulosDes;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MmstockRecord>? stocksDesc;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MclientesRecord>? cleintesDesc;
=======
  int? clientess = 0;

  int? cuentascorrientes = 0;

  int? listadeprecios = 0;

  int? stockss = 0;

  int? articulos = 0;

  int? otros = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<MclientesRow>? clientes;
  // Stores action output result for [Custom Action - batchInsertClientes1] action in LoadPageifLogin widget.
  String? intoClientesinSQLite;
  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<VistaSaldosClientesRow>? vistaSaldosClientes;
  // Stores action output result for [Custom Action - syncArticulosMasivo] action in LoadPageifLogin widget.
  String? articulosMAsivos;
  // Stores action output result for [Custom Action - getUniquePriceLists2] action in LoadPageifLogin widget.
  List<String>? extracciondeid;
  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<MlistacabeRow>? encabezados;
  // Stores action output result for [Custom Action - batchInsertListacabe] action in LoadPageifLogin widget.
  String? inputListadeEncabezadosSqlite;
  // Stores action output result for [Custom Action - syncPreciosPorEncabezados] action in LoadPageifLogin widget.
  String? inputSQLiteListaPRecios;
  // Stores action output result for [Custom Action - syncUltimasVisitas] action in LoadPageifLogin widget.
  String? ultimasVisitas;
  // Stores action output result for [Custom Action - syncStockPorDeposito] action in LoadPageifLogin widget.
  String? stocks;
  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<MgruposRow>? mgrupos;
  // Stores action output result for [Custom Action - batchInsertGrupos] action in LoadPageifLogin widget.
  String? intosQLIteGrupos;
  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<MmonedasRow>? monedas;
  // Stores action output result for [Custom Action - batchInsertMonedas] action in LoadPageifLogin widget.
  String? intoSQLmonedas;
  // Stores action output result for [Backend Call - Query Rows] action in LoadPageifLogin widget.
  List<MmarcasRow>? mmarcas;
  // Stores action output result for [Custom Action - batchInsertMarcas] action in LoadPageifLogin widget.
  String? inputmarcassqlite;
>>>>>>> 1ddf1af (ultimo realizado)

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
