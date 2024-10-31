import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('DigiteSuaSenha');
    });

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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/images/Prottipos_de_Alta_Definio.png',
                                    width: 410,
                                    height: 990,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.01, 0.73),
                                child: Container(
                                  width: 220,
                                  child: TextFormField(
                                    controller: _model.userTextController,
                                    focusNode: _model.userFocusNode,
                                    onFieldSubmitted: (_) async {
                                      Navigator.pop(context);
                                    },
                                    autofocus: false,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: true,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .labelMediumFamily,
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelMediumFamily),
                                      ),
                                      hintText: 'DIGITE SEU EMAIL',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                        fontFamily:
                                        FlutterFlowTheme.of(context)
                                            .labelSmallFamily,
                                        color: Color(0x59000000),
                                        fontSize: 14,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .labelSmallFamily),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily:
                                      FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      color: Colors.black,
                                      letterSpacing: 0.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .bodyMediumFamily),
                                    ),
                                    cursorColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    validator: _model
                                        .userTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.01, 0.88),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('DigiteSuaSenha');
                                  },
                                  text: 'OK',
                                  options: FFButtonOptions(
                                    width: 66,
                                    height: 28,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 0, 16, 0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 0),
                                    color: Colors.white,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                      fontFamily:
                                      FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      color: Colors.black,
                                      fontSize: 18,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        Shadow(
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          offset: Offset(2.0, 2.0),
                                          blurRadius: 2.0,
                                        )
                                      ],
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                          FlutterFlowTheme.of(context)
                                              .titleSmallFamily),
                                    ),
                                    elevation: 0,
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.99, 1.09),
                                child: Container(
                                  width: 399,
                                  height: 49,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
