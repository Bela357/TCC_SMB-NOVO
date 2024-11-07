// lib/login/login_model.dart
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'login_widget.dart' show LoginWidget;

class LoginModel extends FlutterFlowModel<LoginWidget> {
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

  Future<void> verificarEmail(BuildContext context) async {
    final email = userTextController?.text ?? '';
    if (email.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, insira seu email.')),
      );
      return;
    }

    final apiUrl = Uri.parse('https://exemplo.com/api/verificar_email.php');

    try {
      final response = await http.post(apiUrl, body: {'email': email});
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data['existe'] == true) {
          context.goNamed('DigiteSuaSenha', queryParams: {'email': email});
        } else {
          context.goNamed('LinkContratacao');
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erro ao verificar email.')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Erro na conexão com o servidor.')),
      );
    }
  }
}
