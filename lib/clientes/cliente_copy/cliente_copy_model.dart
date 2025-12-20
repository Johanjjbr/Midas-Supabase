import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/clientes/filtro_clientes/filtro_clientes_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cliente_copy_widget.dart' show ClienteCopyWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClienteCopyModel extends FlutterFlowModel<ClienteCopyWidget> {
  ///  Local state fields for this page.

  bool text = false;

  String search = ' ';

  PageControl? controlpage = PageControl.pagina2;

  String sortBy = 'ALFA';

  String filterBy = 'TODOS';

  ///  State fields for stateful widgets in this page.

  // State field(s) for BuscarClientes widget.
  FocusNode? buscarClientesFocusNode;
  TextEditingController? buscarClientesTextController;
  String? Function(BuildContext, String?)?
      buscarClientesTextControllerValidator;
  // Stores action output result for [Bottom Sheet - FiltroClientes] action in Button widget.
  String? datosdelBoton;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    buscarClientesFocusNode?.dispose();
    buscarClientesTextController?.dispose();
  }
}
