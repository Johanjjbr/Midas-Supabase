import '/backend/sqlite/sqlite_manager.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'pruebadesincronizacion_widget.dart' show PruebadesincronizacionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PruebadesincronizacionModel
    extends FlutterFlowModel<PruebadesincronizacionWidget> {
  ///  Local state fields for this page.

  int? clientess = 0;

  int? cuentascorrientes = 0;

  int? listadeprecios = 0;

  int? articulos = 0;

  int? stock = 0;

  int? rutas = 0;

  int? otros = 0;

  int? prueba = 0;

  int? visitas;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MclientesRow>? clientes;
  // Stores action output result for [Custom Action - batchInsertClientes1] action in Button widget.
  String? intoClientesinSQLite;
  // Stores action output result for [Custom Action - syncCtaCte] action in Button widget.
  String? cuentascorriente;
  // Stores action output result for [Custom Action - syncArticulosMasivo] action in Button widget.
  String? articulosMAsivos;
  // Stores action output result for [Custom Action - getUniquePriceLists2] action in Button widget.
  List<String>? extracciondeid;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MlistacabeRow>? encabezados;
  // Stores action output result for [Custom Action - batchInsertListacabe] action in Button widget.
  String? inputListadeEncabezadosSqlite;
  // Stores action output result for [Custom Action - syncPreciosPorEncabezados] action in Button widget.
  String? inputSQLiteListaPRecios;
  // Stores action output result for [Custom Action - syncStockPorDeposito] action in Button widget.
  String? stocks;
  // Stores action output result for [Custom Action - syncVisitas] action in Button widget.
  String? mvisitas;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MgruposRow>? mgrupos;
  // Stores action output result for [Custom Action - batchInsertGrupos] action in Button widget.
  String? intosQLIteGrupos;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MmonedasRow>? monedas;
  // Stores action output result for [Custom Action - batchInsertMonedas] action in Button widget.
  String? intoSQLmonedas;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MmarcasRow>? mmarcas;
  // Stores action output result for [Custom Action - batchInsertMarcas] action in Button widget.
  String? inputmarcassqlite;
  // Stores action output result for [Custom Action - syncCtaCte] action in Button widget.
  String? cuentaCorrienteS;
  // Stores action output result for [Custom Action - syncVisitas] action in Button widget.
  String? mvisitasS;
  // Stores action output result for [Custom Action - clearAllTables] action in IconButton widget.
  String? cleantables;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
