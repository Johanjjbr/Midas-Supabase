import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'load_pageif_login_widget.dart' show LoadPageifLoginWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class LoadPageifLoginModel extends FlutterFlowModel<LoadPageifLoginWidget> {
  ///  Local state fields for this page.

  double? load = 0.2;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  MdepositoRecord? mdepositoss;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MgruposRecord>? gruposDes;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MarticulosRecord>? articulosDes;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MmstockRecord>? stocksDesc;
  // Stores action output result for [Firestore Query - Query a collection] action in LoadPageifLogin widget.
  List<MclientesRecord>? cleintesDesc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
