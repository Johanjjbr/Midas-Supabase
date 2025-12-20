import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
<<<<<<< HEAD
=======
import '/backend/sqlite/sqlite_manager.dart';
import '/components/observaciones_componente_widget.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nuevo_pedido/input_cantidad_carrito/input_cantidad_carrito_widget.dart';
<<<<<<< HEAD
=======
import '/nuevo_pedido/pedido_borrador_encontrado/pedido_borrador_encontrado_widget.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'nuevo_pedido_widget.dart' show NuevoPedidoWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:flutter/scheduler.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NuevoPedidoModel extends FlutterFlowModel<NuevoPedidoWidget> {
  ///  Local state fields for this page.

  MclientesRecord? refUsuario;

  List<CartItemStruct> listaItemsEnProceso = [];
  void addToListaItemsEnProceso(CartItemStruct item) =>
      listaItemsEnProceso.add(item);
  void removeFromListaItemsEnProceso(CartItemStruct item) =>
      listaItemsEnProceso.remove(item);
  void removeAtIndexFromListaItemsEnProceso(int index) =>
      listaItemsEnProceso.removeAt(index);
  void insertAtIndexInListaItemsEnProceso(int index, CartItemStruct item) =>
      listaItemsEnProceso.insert(index, item);
  void updateListaItemsEnProcesoAtIndex(
          int index, Function(CartItemStruct) updateFn) =>
      listaItemsEnProceso[index] = updateFn(listaItemsEnProceso[index]);

<<<<<<< HEAD
=======
  int? notaencabezado;

  int? counter = 1;

  String? observaciones;

  double? bonificacion = 5.0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - SQLite (checkBorradorCliente)] action in Nuevo_Pedido widget.
  List<CheckBorradorClienteRow>? checkClientes;
  // Stores action output result for [Bottom Sheet - PedidoBorradorEncontrado] action in Nuevo_Pedido widget.
  int? borradorEncontrado;
  // Stores action output result for [Bottom Sheet - ObservacionesComponente] action in Button widget.
  String? observacione;

>>>>>>> 1ddf1af (ultimo realizado)
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
