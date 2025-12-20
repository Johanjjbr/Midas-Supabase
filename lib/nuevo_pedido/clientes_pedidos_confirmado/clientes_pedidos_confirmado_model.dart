<<<<<<< HEAD
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
=======
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nuevo_pedido/pedido_confirmado_componente/pedido_confirmado_componente_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'clientes_pedidos_confirmado_widget.dart'
    show ClientesPedidosConfirmadoWidget;
import 'package:auto_size_text/auto_size_text.dart';
<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
=======
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class ClientesPedidosConfirmadoModel
    extends FlutterFlowModel<ClientesPedidosConfirmadoWidget> {
  ///  Local state fields for this page.

  String? pedidoID;

<<<<<<< HEAD
=======
  int? counter = 1;

  String? observaciones;

>>>>>>> 1ddf1af (ultimo realizado)
  ///  State fields for stateful widgets in this page.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<CartItemStruct>();
<<<<<<< HEAD
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MnotapedcabRecord? encabezadoCreado;
=======
>>>>>>> 1ddf1af (ultimo realizado)

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
