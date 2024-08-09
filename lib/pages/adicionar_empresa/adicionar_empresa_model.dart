import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_empresa_widget.dart' show AdicionarEmpresaWidget;
import 'package:flutter/material.dart';

class AdicionarEmpresaModel extends FlutterFlowModel<AdicionarEmpresaWidget> {
  ///  Local state fields for this page.

  bool addEmpresa = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for edtToken widget.
  FocusNode? edtTokenFocusNode;
  TextEditingController? edtTokenTextController;
  String? Function(BuildContext, String?)? edtTokenTextControllerValidator;
  // State field(s) for edtCodEmpresa widget.
  FocusNode? edtCodEmpresaFocusNode;
  TextEditingController? edtCodEmpresaTextController;
  String? Function(BuildContext, String?)? edtCodEmpresaTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiCadEmpresa)] action in btnAtualizaAPI widget.
  ApiCallResponse? rApiEmpresa;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    edtTokenFocusNode?.dispose();
    edtTokenTextController?.dispose();

    edtCodEmpresaFocusNode?.dispose();
    edtCodEmpresaTextController?.dispose();
  }
}
