// lib/go_router.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'login/login_widget.dart';
import 'link_contratacao/link_contratacao_widget.dart';
import 'digite_sua_senha/digite_sua_senha_widget.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: 'Login',
        path: '/login',
        builder: (context, state) => LoginWidget(),
      ),
      GoRoute(
        name: 'LinkContratacao',
        path: '/linkContratacao',
        builder: (context, state) => LinkContratacaoWidget(),
      ),
      GoRoute(
        name: 'DigiteSuaSenha',
        path: '/digiteSuaSenha',
        builder: (context, state) {
          final email = state.queryParams['email'] ?? '';
          return DigiteSuaSenhaWidget(email: email);
        },
      ),
    ],
  );
}
