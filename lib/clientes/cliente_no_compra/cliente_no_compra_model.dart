import '/backend/backend.dart';
<<<<<<< HEAD
=======
import '/backend/sqlite/sqlite_manager.dart';
>>>>>>> 1ddf1af (ultimo realizado)
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cliente_no_compra_widget.dart' show ClienteNoCompraWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClienteNoCompraModel extends FlutterFlowModel<ClienteNoCompraWidget> {
  ///  Local state fields for this page.

  String? imagen1;

  String? imagen2;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Observaciones widget.
  FocusNode? observacionesFocusNode;
  TextEditingController? observacionesTextController;
  String? Function(BuildContext, String?)? observacionesTextControllerValidator;
  bool isDataUploading_uploadfoto1 = false;
  FFUploadedFile uploadedLocalFile_uploadfoto1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadLocal2 = false;
  FFUploadedFile uploadedLocalFile_uploadLocal2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_foto1 = false;
  FFUploadedFile uploadedLocalFile_foto1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_foto1 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
