import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ApiCadEmpresaCall {
  static Future<ApiCallResponse> call({
    String? empresa = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiCadEmpresa',
      apiUrl: 'https://mynfe-api.expressflex.com.br/api/listar-empresas-nw',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'empresa': empresa,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? codigo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CODIGO''',
      ));
  static String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CNPJ''',
      ));
  static String? idgrpemp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].IDGRPEMP''',
      ));
  static String? razao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].RAZAO''',
      ));
}

class ApiAddClientesCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? empresa = '',
    String? cnpj = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiAddClientes',
      apiUrl: 'https://mynfe-api.expressflex.com.br/api/listar-clientes-nw',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'empresa': empresa,
        'cnpj': cnpj,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? codigo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CODIGO''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].NOME''',
      ));
  static String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].CNPJ''',
      ));
  static String? idgrpemp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].IDGRPEMP''',
      ));
  static String? codEmp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].COD_EMP''',
      ));
}

class ApiOrcamentosCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? empresa = '',
    String? cliente = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'apiOrcamentos',
      apiUrl: 'https://mynfe-api.expressflex.com.br/api/pedido-orcamento',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'token': token,
        'empresa': empresa,
        'cliente': cliente,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
