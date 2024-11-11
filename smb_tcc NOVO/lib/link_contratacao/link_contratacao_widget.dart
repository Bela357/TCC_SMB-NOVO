import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'link_contratacao_model.dart';

class LinkContratacaoWidget extends StatefulWidget {
  const LinkContratacaoWidget({super.key});

  @override
  State<LinkContratacaoWidget> createState() => _LinkContratacaoWidgetState();
}

class _LinkContratacaoWidgetState extends State<LinkContratacaoWidget> {
  late LinkContratacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LinkContratacaoModel());
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
              Text(
                'Ligue para (11) 99999-9999\ne contrate nosso serviço!',
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              TextButton(
                onPressed: () => context.safePop(),
                child: const Text('Ou clique aqui para voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
