import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_cliente_widget.dart' show AdicionarClienteWidget;
import 'package:flutter/material.dart';

class AdicionarClienteModel extends FlutterFlowModel<AdicionarClienteWidget> {
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
  // State field(s) for edtCNPJCli widget.
  FocusNode? edtCNPJCliFocusNode;
  TextEditingController? edtCNPJCliTextController;
  String? Function(BuildContext, String?)? edtCNPJCliTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiAddClientes)] action in btnAtualizaAPI widget.
  ApiCallResponse? rApiCliente;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    edtTokenFocusNode?.dispose();
    edtTokenTextController?.dispose();

    edtCodEmpresaFocusNode?.dispose();
    edtCodEmpresaTextController?.dispose();

    edtCNPJCliFocusNode?.dispose();
    edtCNPJCliTextController?.dispose();
  }
}
