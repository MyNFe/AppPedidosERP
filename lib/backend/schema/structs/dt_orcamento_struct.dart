// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtOrcamentoStruct extends BaseStruct {
  DtOrcamentoStruct({
    String? pedido,
    String? codigo,
    String? lin1,
    String? valorUni,
    String? unid,
    String? valorConv,
    String? unidConv,
    String? empresa,
    String? cliente,
    String? codCon,
    String? codSer,
    String? tabPreco,
    int? qtdItens,
  })  : _pedido = pedido,
        _codigo = codigo,
        _lin1 = lin1,
        _valorUni = valorUni,
        _unid = unid,
        _valorConv = valorConv,
        _unidConv = unidConv,
        _empresa = empresa,
        _cliente = cliente,
        _codCon = codCon,
        _codSer = codSer,
        _tabPreco = tabPreco,
        _qtdItens = qtdItens;

  // "PEDIDO" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;

  bool hasPedido() => _pedido != null;

  // "CODIGO" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "LIN1" field.
  String? _lin1;
  String get lin1 => _lin1 ?? '';
  set lin1(String? val) => _lin1 = val;

  bool hasLin1() => _lin1 != null;

  // "VALOR_UNI" field.
  String? _valorUni;
  String get valorUni => _valorUni ?? '';
  set valorUni(String? val) => _valorUni = val;

  bool hasValorUni() => _valorUni != null;

  // "UNID" field.
  String? _unid;
  String get unid => _unid ?? '';
  set unid(String? val) => _unid = val;

  bool hasUnid() => _unid != null;

  // "VALOR_CONV" field.
  String? _valorConv;
  String get valorConv => _valorConv ?? '';
  set valorConv(String? val) => _valorConv = val;

  bool hasValorConv() => _valorConv != null;

  // "UNID_CONV" field.
  String? _unidConv;
  String get unidConv => _unidConv ?? '';
  set unidConv(String? val) => _unidConv = val;

  bool hasUnidConv() => _unidConv != null;

  // "EMPRESA" field.
  String? _empresa;
  String get empresa => _empresa ?? '';
  set empresa(String? val) => _empresa = val;

  bool hasEmpresa() => _empresa != null;

  // "CLIENTE" field.
  String? _cliente;
  String get cliente => _cliente ?? '';
  set cliente(String? val) => _cliente = val;

  bool hasCliente() => _cliente != null;

  // "COD_CON" field.
  String? _codCon;
  String get codCon => _codCon ?? '';
  set codCon(String? val) => _codCon = val;

  bool hasCodCon() => _codCon != null;

  // "COD_SER" field.
  String? _codSer;
  String get codSer => _codSer ?? '';
  set codSer(String? val) => _codSer = val;

  bool hasCodSer() => _codSer != null;

  // "TAB_PRECO" field.
  String? _tabPreco;
  String get tabPreco => _tabPreco ?? '';
  set tabPreco(String? val) => _tabPreco = val;

  bool hasTabPreco() => _tabPreco != null;

  // "qtd_itens" field.
  int? _qtdItens;
  int get qtdItens => _qtdItens ?? 0;
  set qtdItens(int? val) => _qtdItens = val;

  void incrementQtdItens(int amount) => qtdItens = qtdItens + amount;

  bool hasQtdItens() => _qtdItens != null;

  static DtOrcamentoStruct fromMap(Map<String, dynamic> data) =>
      DtOrcamentoStruct(
        pedido: data['PEDIDO'] as String?,
        codigo: data['CODIGO'] as String?,
        lin1: data['LIN1'] as String?,
        valorUni: data['VALOR_UNI'] as String?,
        unid: data['UNID'] as String?,
        valorConv: data['VALOR_CONV'] as String?,
        unidConv: data['UNID_CONV'] as String?,
        empresa: data['EMPRESA'] as String?,
        cliente: data['CLIENTE'] as String?,
        codCon: data['COD_CON'] as String?,
        codSer: data['COD_SER'] as String?,
        tabPreco: data['TAB_PRECO'] as String?,
        qtdItens: castToType<int>(data['qtd_itens']),
      );

  static DtOrcamentoStruct? maybeFromMap(dynamic data) => data is Map
      ? DtOrcamentoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'PEDIDO': _pedido,
        'CODIGO': _codigo,
        'LIN1': _lin1,
        'VALOR_UNI': _valorUni,
        'UNID': _unid,
        'VALOR_CONV': _valorConv,
        'UNID_CONV': _unidConv,
        'EMPRESA': _empresa,
        'CLIENTE': _cliente,
        'COD_CON': _codCon,
        'COD_SER': _codSer,
        'TAB_PRECO': _tabPreco,
        'qtd_itens': _qtdItens,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'PEDIDO': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'CODIGO': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'LIN1': serializeParam(
          _lin1,
          ParamType.String,
        ),
        'VALOR_UNI': serializeParam(
          _valorUni,
          ParamType.String,
        ),
        'UNID': serializeParam(
          _unid,
          ParamType.String,
        ),
        'VALOR_CONV': serializeParam(
          _valorConv,
          ParamType.String,
        ),
        'UNID_CONV': serializeParam(
          _unidConv,
          ParamType.String,
        ),
        'EMPRESA': serializeParam(
          _empresa,
          ParamType.String,
        ),
        'CLIENTE': serializeParam(
          _cliente,
          ParamType.String,
        ),
        'COD_CON': serializeParam(
          _codCon,
          ParamType.String,
        ),
        'COD_SER': serializeParam(
          _codSer,
          ParamType.String,
        ),
        'TAB_PRECO': serializeParam(
          _tabPreco,
          ParamType.String,
        ),
        'qtd_itens': serializeParam(
          _qtdItens,
          ParamType.int,
        ),
      }.withoutNulls;

  static DtOrcamentoStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtOrcamentoStruct(
        pedido: deserializeParam(
          data['PEDIDO'],
          ParamType.String,
          false,
        ),
        codigo: deserializeParam(
          data['CODIGO'],
          ParamType.String,
          false,
        ),
        lin1: deserializeParam(
          data['LIN1'],
          ParamType.String,
          false,
        ),
        valorUni: deserializeParam(
          data['VALOR_UNI'],
          ParamType.String,
          false,
        ),
        unid: deserializeParam(
          data['UNID'],
          ParamType.String,
          false,
        ),
        valorConv: deserializeParam(
          data['VALOR_CONV'],
          ParamType.String,
          false,
        ),
        unidConv: deserializeParam(
          data['UNID_CONV'],
          ParamType.String,
          false,
        ),
        empresa: deserializeParam(
          data['EMPRESA'],
          ParamType.String,
          false,
        ),
        cliente: deserializeParam(
          data['CLIENTE'],
          ParamType.String,
          false,
        ),
        codCon: deserializeParam(
          data['COD_CON'],
          ParamType.String,
          false,
        ),
        codSer: deserializeParam(
          data['COD_SER'],
          ParamType.String,
          false,
        ),
        tabPreco: deserializeParam(
          data['TAB_PRECO'],
          ParamType.String,
          false,
        ),
        qtdItens: deserializeParam(
          data['qtd_itens'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DtOrcamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtOrcamentoStruct &&
        pedido == other.pedido &&
        codigo == other.codigo &&
        lin1 == other.lin1 &&
        valorUni == other.valorUni &&
        unid == other.unid &&
        valorConv == other.valorConv &&
        unidConv == other.unidConv &&
        empresa == other.empresa &&
        cliente == other.cliente &&
        codCon == other.codCon &&
        codSer == other.codSer &&
        tabPreco == other.tabPreco &&
        qtdItens == other.qtdItens;
  }

  @override
  int get hashCode => const ListEquality().hash([
        pedido,
        codigo,
        lin1,
        valorUni,
        unid,
        valorConv,
        unidConv,
        empresa,
        cliente,
        codCon,
        codSer,
        tabPreco,
        qtdItens
      ]);
}

DtOrcamentoStruct createDtOrcamentoStruct({
  String? pedido,
  String? codigo,
  String? lin1,
  String? valorUni,
  String? unid,
  String? valorConv,
  String? unidConv,
  String? empresa,
  String? cliente,
  String? codCon,
  String? codSer,
  String? tabPreco,
  int? qtdItens,
}) =>
    DtOrcamentoStruct(
      pedido: pedido,
      codigo: codigo,
      lin1: lin1,
      valorUni: valorUni,
      unid: unid,
      valorConv: valorConv,
      unidConv: unidConv,
      empresa: empresa,
      cliente: cliente,
      codCon: codCon,
      codSer: codSer,
      tabPreco: tabPreco,
      qtdItens: qtdItens,
    );
