import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
<<<<<<< HEAD
=======
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nuevo_pedido/int_cantidad/int_cantidad_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pedidos_nuevo_agrega_items_widget.dart'
    show PedidosNuevoAgregaItemsWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
<<<<<<< HEAD
import 'package:text_search/text_search.dart';
=======
>>>>>>> 1ddf1af (ultimo realizado)

class PedidosNuevoAgregaItemsModel
    extends FlutterFlowModel<PedidosNuevoAgregaItemsWidget> {
  ///  Local state fields for this page.

  bool textBusqueda = false;

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
  String? searchTerm = ' ';

  int? counter = 1;

  int? notapediencabezado;

>>>>>>> 1ddf1af (ultimo realizado)
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
<<<<<<< HEAD
  List<MarticulosRecord> simpleSearchResults = [];
=======
>>>>>>> 1ddf1af (ultimo realizado)

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
