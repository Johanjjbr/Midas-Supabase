<<<<<<< HEAD
import '/backend/backend.dart';
=======
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/components/menu_componente_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'catalogo_widget.dart' show CatalogoWidget;
<<<<<<< HEAD
=======
import 'package:easy_debounce/easy_debounce.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CatalogoModel extends FlutterFlowModel<CatalogoWidget> {
<<<<<<< HEAD
=======
  ///  Local state fields for this page.

  bool search = false;

  String texfieltEscrito = ' ';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

>>>>>>> 1ddf1af (ultimo realizado)
  @override
  void initState(BuildContext context) {}

  @override
<<<<<<< HEAD
  void dispose() {}
=======
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
>>>>>>> 1ddf1af (ultimo realizado)
}
