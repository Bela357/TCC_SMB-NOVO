import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for user widget.
  FocusNode? userFocusNode;
  TextEditingController? userTextController;
  String? Function(BuildContext, String?)? userTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    userFocusNode?.dispose();
    userTextController?.dispose();
  }
}
