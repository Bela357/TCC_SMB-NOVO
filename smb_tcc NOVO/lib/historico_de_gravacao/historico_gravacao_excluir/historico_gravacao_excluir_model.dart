import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'historico_gravacao_excluir_widget.dart'
    show HistoricoGravacaoExcluirWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoricoGravacaoExcluirModel
    extends FlutterFlowModel<HistoricoGravacaoExcluirWidget> {
  // Lista de gravações (por exemplo, representadas por Strings ou um objeto de gravação)
  List<String> gravacoes = ["Gravação 1", "Gravação 2", "Gravação 3"];

  // Controlador para o PageView
  PageController? pageViewController;

  // Index atual do PageView
  int get pageViewCurrentIndex => pageViewController != null &&
      pageViewController!.hasClients &&
      pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  // Método para excluir uma gravação da lista
  void excluirGravacao(int index) {
    if (index >= 0 && index < gravacoes.length) {
      gravacoes.removeAt(index); // Remove a gravação pelo índice
      notifylistener();// Notifica os widgets que usam esse modelo para atualizar a UI
    }
  }

  @override
  void initState(BuildContext context) {
    pageViewController = PageController();
  }

  @override
  void dispose() {
    pageViewController?.dispose();
    dispose();
  }

  void notifylistener() {}
}
