import '/backend/sqlite/sqlite_manager.dart';
import '/components/observaciones_componente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'clientes_pedidos_observaciones_widget.dart'
    show ClientesPedidosObservacionesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClientesPedidosObservacionesModel
    extends FlutterFlowModel<ClientesPedidosObservacionesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ObservacionesComponente component.
  late ObservacionesComponenteModel observacionesComponenteModel;

  @override
  void initState(BuildContext context) {
    observacionesComponenteModel =
        createModel(context, () => ObservacionesComponenteModel());
  }

  @override
  void dispose() {
    observacionesComponenteModel.dispose();
  }
}
