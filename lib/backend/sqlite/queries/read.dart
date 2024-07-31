import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN RETORNATOKEN
Future<List<RetornaTokenRow>> performRetornaToken(
  Database database,
) {
  const query = '''
select Token from Config where id = 1
''';
  return _readQuery(database, query, (d) => RetornaTokenRow(d));
}

class RetornaTokenRow extends SqliteRow {
  RetornaTokenRow(super.data);

  String get token => data['Token'] as String;
}

/// END RETORNATOKEN

/// BEGIN LISTAEMPRESAS
Future<List<ListaEmpresasRow>> performListaEmpresas(
  Database database,
) {
  const query = '''
Select codigo, cnpj, razao, idgrpemp from CadEmpresa
''';
  return _readQuery(database, query, (d) => ListaEmpresasRow(d));
}

class ListaEmpresasRow extends SqliteRow {
  ListaEmpresasRow(super.data);

  String get codigo => data['Codigo'] as String;
  String get cnpj => data['cnpj'] as String;
  String get razao => data['razao'] as String;
  String get idgrpemp => data['idgrpemp'] as String;
}

/// END LISTAEMPRESAS
