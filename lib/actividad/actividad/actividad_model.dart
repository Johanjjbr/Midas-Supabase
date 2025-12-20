<<<<<<< HEAD
=======
import '/backend/schema/enums/enums.dart';
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'actividad_widget.dart' show ActividadWidget;
import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActividadModel extends FlutterFlowModel<ActividadWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
