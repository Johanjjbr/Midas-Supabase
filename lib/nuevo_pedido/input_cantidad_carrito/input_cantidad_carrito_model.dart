<<<<<<< HEAD
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
=======
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'input_cantidad_carrito_widget.dart' show InputCantidadCarritoWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputCantidadCarritoModel
    extends FlutterFlowModel<InputCantidadCarritoWidget> {
  ///  Local state fields for this component.

<<<<<<< HEAD
  MarticulosRecord? refarti;
=======
  GetArticulosConFiltroRow? refarti;
>>>>>>> 1ddf1af (ultimo realizado)

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
