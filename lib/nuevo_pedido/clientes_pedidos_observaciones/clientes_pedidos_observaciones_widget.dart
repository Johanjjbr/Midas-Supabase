import '/backend/sqlite/sqlite_manager.dart';
import '/components/observaciones_componente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'clientes_pedidos_observaciones_model.dart';
export 'clientes_pedidos_observaciones_model.dart';

class ClientesPedidosObservacionesWidget extends StatefulWidget {
  const ClientesPedidosObservacionesWidget({
    super.key,
    required this.referencia,
  });

  final GetClientesConFiltroyOrdenRow? referencia;

  static String routeName = 'ClientesPedidosObservaciones';
  static String routePath = '/clientesPedidosObservaciones';

  @override
  State<ClientesPedidosObservacionesWidget> createState() =>
      _ClientesPedidosObservacionesWidgetState();
}

class _ClientesPedidosObservacionesWidgetState
    extends State<ClientesPedidosObservacionesWidget> {
  late ClientesPedidosObservacionesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClientesPedidosObservacionesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Observaciones',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.observacionesComponenteModel,
            updateCallback: () => safeSetState(() {}),
            child: ObservacionesComponenteWidget(
              nombre: widget!.referencia?.codcli,
              codigo: widget!.referencia?.razonsoc,
              direccion: valueOrDefault<String>(
                widget!.referencia?.domicilio,
                '[domicilio]',
              ),
              localidad: valueOrDefault<String>(
                widget!.referencia?.localidad,
                '[localidad]',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
