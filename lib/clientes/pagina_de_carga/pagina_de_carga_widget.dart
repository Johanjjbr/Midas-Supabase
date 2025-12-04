import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_de_carga_model.dart';
export 'pagina_de_carga_model.dart';

class PaginaDeCargaWidget extends StatefulWidget {
  const PaginaDeCargaWidget({super.key});

  static String routeName = 'PaginaDeCarga';
  static String routePath = '/paginaDeCarga';

  @override
  State<PaginaDeCargaWidget> createState() => _PaginaDeCargaWidgetState();
}

class _PaginaDeCargaWidgetState extends State<PaginaDeCargaWidget> {
  late PaginaDeCargaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaDeCargaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().CODIGO == 0) {
        context.pushNamed(Authentication1Widget.routeName);
      } else {
        context.pushNamed(Dashboard1Widget.routeName);
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Midas_App.png',
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
