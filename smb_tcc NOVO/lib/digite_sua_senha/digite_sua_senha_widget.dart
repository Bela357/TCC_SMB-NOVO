import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'digite_sua_senha_model.dart';

class DigiteSuaSenhaWidget extends StatefulWidget {
  const DigiteSuaSenhaWidget({super.key});

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
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _model.userTextController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Digite sua senha',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushNamed('HOME');
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
