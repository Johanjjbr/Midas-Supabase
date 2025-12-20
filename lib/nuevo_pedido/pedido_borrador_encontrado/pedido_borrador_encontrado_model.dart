import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pedido_borrador_encontrado_widget.dart'
    show PedidoBorradorEncontradoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PedidoBorradorEncontradoModel
    extends FlutterFlowModel<PedidoBorradorEncontradoWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - SQLite (getItemsBorrador)] action in Button widget.
  List<GetItemsBorradorRow>? itemsdelborrador;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
