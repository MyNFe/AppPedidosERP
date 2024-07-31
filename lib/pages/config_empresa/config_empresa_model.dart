import '/backend/api_requests/api_calls.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'config_empresa_widget.dart' show ConfigEmpresaWidget;
import 'package:flutter/material.dart';

class ConfigEmpresaModel extends FlutterFlowModel<ConfigEmpresaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for edtToken widget.
  FocusNode? edtTokenFocusNode;
  TextEditingController? edtTokenTextController;
  String? Function(BuildContext, String?)? edtTokenTextControllerValidator;
  // State field(s) for edtCodEmpresa widget.
  FocusNode? edtCodEmpresaFocusNode;
  TextEditingController? edtCodEmpresaTextController;
  String? Function(BuildContext, String?)? edtCodEmpresaTextControllerValidator;
  // Stores action output result for [Backend Call - SQLite (retornaToken)] action in btnAtualizaAPI widget.
  List<RetornaTokenRow>? vToken;
  // Stores action output result for [Backend Call - API (apiCadEmpresa)] action in btnAtualizaAPI widget.
  ApiCallResponse? rApiEmpresa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    edtTokenFocusNode?.dispose();
    edtTokenTextController?.dispose();

    edtCodEmpresaFocusNode?.dispose();
    edtCodEmpresaTextController?.dispose();
  }
}
