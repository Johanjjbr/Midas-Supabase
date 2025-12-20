import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'authentication1_widget.dart' show Authentication1Widget;
<<<<<<< HEAD
=======
import 'package:easy_debounce/easy_debounce.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Authentication1Model extends FlutterFlowModel<Authentication1Widget> {
<<<<<<< HEAD
=======
  ///  Local state fields for this page.

  String? codigoformateado;

>>>>>>> 1ddf1af (ultimo realizado)
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

<<<<<<< HEAD
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for codigo widget.
  FocusNode? codigoFocusNode1;
  TextEditingController? codigoTextController1;
  String? Function(BuildContext, String?)? codigoTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
=======
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
>>>>>>> 1ddf1af (ultimo realizado)
  // State field(s) for confirmPassword widget.
  FocusNode? confirmPasswordFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool confirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;
  // State field(s) for CODIGO widget.
<<<<<<< HEAD
  FocusNode? codigoFocusNode2;
  TextEditingController? codigoTextController2;
  String? Function(BuildContext, String?)? codigoTextController2Validator;
=======
  FocusNode? codigoFocusNode;
  TextEditingController? codigoTextController;
  String? Function(BuildContext, String?)? codigoTextControllerValidator;
>>>>>>> 1ddf1af (ultimo realizado)
  // State field(s) for passwordLogin widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginTextController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginTextControllerValidator;

  @override
  void initState(BuildContext context) {
<<<<<<< HEAD
    passwordVisibility = false;
=======
    passwordRegistroVisibility = false;
>>>>>>> 1ddf1af (ultimo realizado)
    confirmPasswordVisibility = false;
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
<<<<<<< HEAD
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    codigoFocusNode1?.dispose();
    codigoTextController1?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
=======
    emailRegistroFocusNode?.dispose();
    emailRegistroTextController?.dispose();

    codigoRegistroFocusNode?.dispose();
    codigoRegistroTextController?.dispose();

    passwordRegistroFocusNode?.dispose();
    passwordRegistroTextController?.dispose();
>>>>>>> 1ddf1af (ultimo realizado)

    confirmPasswordFocusNode?.dispose();
    confirmPasswordTextController?.dispose();

<<<<<<< HEAD
    codigoFocusNode2?.dispose();
    codigoTextController2?.dispose();
=======
    codigoFocusNode?.dispose();
    codigoTextController?.dispose();
>>>>>>> 1ddf1af (ultimo realizado)

    passwordLoginFocusNode?.dispose();
    passwordLoginTextController?.dispose();
  }
}
