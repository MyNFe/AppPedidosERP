import '/flutter_flow/flutter_flow_util.dart';
import 'listar_empresas_widget.dart' show ListarEmpresasWidget;
import 'package:flutter/material.dart';

class ListarEmpresasModel extends FlutterFlowModel<ListarEmpresasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
