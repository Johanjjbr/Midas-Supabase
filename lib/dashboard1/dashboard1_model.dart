import '/backend/backend.dart';
import '/components/menu_componente_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'dashboard1_widget.dart' show Dashboard1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Dashboard1Model extends FlutterFlowModel<Dashboard1Widget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  MalicuotasRecord? prueba;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
