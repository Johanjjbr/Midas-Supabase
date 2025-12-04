import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/profile_creation_flow/edit_profile_component/edit_profile_component_widget.dart';
import '/index.dart';
import 'profile_create_widget.dart' show ProfileCreateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileCreateModel extends FlutterFlowModel<ProfileCreateWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for EditProfileComponent component.
  late EditProfileComponentModel editProfileComponentModel;

  @override
  void initState(BuildContext context) {
    editProfileComponentModel =
        createModel(context, () => EditProfileComponentModel());
  }

  @override
  void dispose() {
    editProfileComponentModel.dispose();
  }
}
