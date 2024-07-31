import 'package:sqflite/sqflite.dart';

/// BEGIN INSERTEMPRESA
Future performInsertEmpresa(
  Database database, {
  String? codigo,
  String? cnpj,
  String? razao,
  String? idgrpemp,
}) {
  final query = '''
Insert Into CadEmpresa (codigo, cnpj, razao, idgrpemp) values ('$codigo', '$cnpj', '$razao', '$idgrpemp')
''';
  return database.rawQuery(query);
}

/// END INSERTEMPRESA
