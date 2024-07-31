import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'agrodb',
      'agrodb.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<RetornaTokenRow>> retornaToken() => performRetornaToken(
        _database,
      );

  Future<List<ListaEmpresasRow>> listaEmpresas() => performListaEmpresas(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future insertEmpresa({
    String? codigo,
    String? cnpj,
    String? razao,
    String? idgrpemp,
  }) =>
      performInsertEmpresa(
        _database,
        codigo: codigo,
        cnpj: cnpj,
        razao: razao,
        idgrpemp: idgrpemp,
      );

  /// END UPDATE QUERY CALLS
}
