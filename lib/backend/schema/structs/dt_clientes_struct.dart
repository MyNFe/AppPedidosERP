// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DtClientesStruct extends BaseStruct {
  DtClientesStruct({
    String? codigo,
    String? nome,
    String? cnpj,
    String? idgrpemp,
    String? codEmp,
  })  : _codigo = codigo,
        _nome = nome,
        _cnpj = cnpj,
        _idgrpemp = idgrpemp,
        _codEmp = codEmp;

  // "CODIGO" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "NOME" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

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

  // "COD_EMP" field.
  String? _codEmp;
  String get codEmp => _codEmp ?? '';
  set codEmp(String? val) => _codEmp = val;

  bool hasCodEmp() => _codEmp != null;

  static DtClientesStruct fromMap(Map<String, dynamic> data) =>
      DtClientesStruct(
        codigo: data['CODIGO'] as String?,
        nome: data['NOME'] as String?,
        cnpj: data['CNPJ'] as String?,
        idgrpemp: data['IDGRPEMP'] as String?,
        codEmp: data['COD_EMP'] as String?,
      );

  static DtClientesStruct? maybeFromMap(dynamic data) => data is Map
      ? DtClientesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'CODIGO': _codigo,
        'NOME': _nome,
        'CNPJ': _cnpj,
        'IDGRPEMP': _idgrpemp,
        'COD_EMP': _codEmp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'CODIGO': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'NOME': serializeParam(
          _nome,
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
        'COD_EMP': serializeParam(
          _codEmp,
          ParamType.String,
        ),
      }.withoutNulls;

  static DtClientesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DtClientesStruct(
        codigo: deserializeParam(
          data['CODIGO'],
          ParamType.String,
          false,
        ),
        nome: deserializeParam(
          data['NOME'],
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
        codEmp: deserializeParam(
          data['COD_EMP'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DtClientesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DtClientesStruct &&
        codigo == other.codigo &&
        nome == other.nome &&
        cnpj == other.cnpj &&
        idgrpemp == other.idgrpemp &&
        codEmp == other.codEmp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([codigo, nome, cnpj, idgrpemp, codEmp]);
}

DtClientesStruct createDtClientesStruct({
  String? codigo,
  String? nome,
  String? cnpj,
  String? idgrpemp,
  String? codEmp,
}) =>
    DtClientesStruct(
      codigo: codigo,
      nome: nome,
      cnpj: cnpj,
      idgrpemp: idgrpemp,
      codEmp: codEmp,
    );
