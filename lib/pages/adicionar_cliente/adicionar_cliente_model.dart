import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'adicionar_cliente_widget.dart' show AdicionarClienteWidget;
import 'package:flutter/material.dart';

class AdicionarClienteModel extends FlutterFlowModel<AdicionarClienteWidget> {
  ///  Local state fields for this page.

  bool addCliente = true;

  String codCli = 'x';

  ///  State fields for stateful widgets in this page.

  // State field(s) for edtCNPJCliente widget.
  FocusNode? edtCNPJClienteFocusNode;
  TextEditingController? edtCNPJClienteTextController;
  String? Function(BuildContext, String?)?
      edtCNPJClienteTextControllerValidator;
  // Stores action output result for [Backend Call - API (apiAddClientes)] action in btnAtualizaAPI widget.
  ApiCallResponse? rApiCliente;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    edtCNPJClienteFocusNode?.dispose();
    edtCNPJClienteTextController?.dispose();
  }
}
