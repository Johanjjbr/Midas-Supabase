import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for EmailRegistro widget.
  FocusNode? emailRegistroFocusNode;
  TextEditingController? emailRegistroTextController;
  String? Function(BuildContext, String?)? emailRegistroTextControllerValidator;
  // State field(s) for codigoRegistro widget.
  FocusNode? codigoRegistroFocusNode;
  TextEditingController? codigoRegistroTextController;
  String? Function(BuildContext, String?)?
      codigoRegistroTextControllerValidator;
  // State field(s) for passwordRegistro widget.
  FocusNode? passwordRegistroFocusNode;
  TextEditingController? passwordRegistroTextController;
  late bool passwordRegistroVisibility;
  String? Function(BuildContext, String?)?
      passwordRegistroTextControllerValidator;
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for CODIGO widget.
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<MvendedorRow>? mVendedor;

  @override
  void initState(BuildContext context) {
    passwordRegistroVisibility = false;
    confirmPasswordVisibility = false;
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailRegistroFocusNode?.dispose();
    emailRegistroTextController?.dispose();

    codigoRegistroFocusNode?.dispose();
    codigoRegistroTextController?.dispose();

    passwordRegistroFocusNode?.dispose();
    passwordRegistroTextController?.dispose();

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

    codigoFocusNode?.dispose();
    codigoTextController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
