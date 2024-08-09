// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtEmpresaStruct extends BaseStruct {
  DtEmpresaStruct({
    String? codigo,
    String? cnpj,
    String? idgrpemp,
    String? razao,
  })  : _codigo = codigo,
        _cnpj = cnpj,
        _idgrpemp = idgrpemp,
        _razao = razao;

  // "CODIGO" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "CNPJ" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "IDGRPEMP" field.
  String? _idgrpemp;
  String get idgrpemp => _idgrpemp ?? '';
  set idgrpemp(String? val) => _idgrpemp = val;

  bool hasIdgrpemp() => _idgrpemp != null;

  // "RAZAO" field.
  String? _razao;
  String get razao => _razao ?? '';
  set razao(String? val) => _razao = val;

  bool hasRazao() => _razao != null;

  static DtEmpresaStruct fromMap(Map<String, dynamic> data) => DtEmpresaStruct(
        codigo: data['CODIGO'] as String?,
        cnpj: data['CNPJ'] as String?,
        idgrpemp: data['IDGRPEMP'] as String?,
        razao: data['RAZAO'] as String?,
      );

  static DtEmpresaStruct? maybeFromMap(dynamic data) => data is Map
      ? DtEmpresaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CODIGO': _codigo,
        'CNPJ': _cnpj,
        'IDGRPEMP': _idgrpemp,
        'RAZAO': _razao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CODIGO': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'CNPJ': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'IDGRPEMP': serializeParam(
          _idgrpemp,
          ParamType.String,
        ),
        'RAZAO': serializeParam(
          _razao,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtEmpresaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtEmpresaStruct(
        codigo: deserializeParam(
          data['CODIGO'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['CNPJ'],
          ParamType.String,
          false,
        ),
        idgrpemp: deserializeParam(
          data['IDGRPEMP'],
          ParamType.String,
          false,
        ),
        razao: deserializeParam(
          data['RAZAO'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtEmpresaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtEmpresaStruct &&
        codigo == other.codigo &&
        cnpj == other.cnpj &&
        idgrpemp == other.idgrpemp &&
        razao == other.razao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codigo, cnpj, idgrpemp, razao]);
}

DtEmpresaStruct createDtEmpresaStruct({
  String? codigo,
  String? cnpj,
  String? idgrpemp,
  String? razao,
}) =>
    DtEmpresaStruct(
      codigo: codigo,
      cnpj: cnpj,
      idgrpemp: idgrpemp,
      razao: razao,
    );
