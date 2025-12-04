import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'input_cantidad_carrito_model.dart';
export 'input_cantidad_carrito_model.dart';

/// Ingreso de cantidades para tabla dinamica
///
class InputCantidadCarritoWidget extends StatefulWidget {
  const InputCantidadCarritoWidget({
    super.key,
    required this.alEditar,
    this.itemData,
  });

  final Future Function(int nuevoValor)? alEditar;
  final CartItemStruct? itemData;

  @override
  State<InputCantidadCarritoWidget> createState() =>
      _InputCantidadCarritoWidgetState();
}

class _InputCantidadCarritoWidgetState
    extends State<InputCantidadCarritoWidget> {
  late InputCantidadCarritoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputCantidadCarritoModel());

    _model.textController ??=
        TextEditingController(text: widget!.itemData?.cantidad?.toString());
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          onChanged: (_) => EasyDebounce.debounce(
            '_model.textController',
            Duration(milliseconds: 200),
            () async {
              await widget.alEditar?.call(
                int.parse(_model.textController.text),
              );
            },
          ),
          autofocus: false,
          enabled: true,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            hintText: '0',
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  font: GoogleFonts.inter(
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            filled: true,
            fillColor: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.inter(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
          keyboardType: TextInputType.number,
          cursorColor: FlutterFlowTheme.of(context).primaryText,
          enableInteractiveSelection: true,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
