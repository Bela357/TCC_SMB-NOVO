import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'digite_sua_senha_model.dart';
export 'digite_sua_senha_model.dart';

class DigiteSuaSenhaWidget extends StatefulWidget {
  const DigiteSuaSenhaWidget({
    super.key,
    required this.email,
  });

  final String email;

  @override
  State<DigiteSuaSenhaWidget> createState() => _DigiteSuaSenhaWidgetState();
}

class _DigiteSuaSenhaWidgetState extends State<DigiteSuaSenhaWidget> {
  late DigiteSuaSenhaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DigiteSuaSenhaModel());

    _model.userTextController ??= TextEditingController();
    _model.userFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              // Resto do design
              Align(
                alignment: AlignmentDirectional(-0.03, 0.94),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('HOME');
                  },
                  text: 'OK',
                  options: FFButtonOptions(
                    width: 66,
                    height: 28,
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleLarge
                        .override(
                      fontFamily:
                      FlutterFlowTheme.of(context).titleLargeFamily,
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    elevation: 0,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
