import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _asEmpresa = prefs
              .getStringList('ff_asEmpresa')
              ?.map((x) {
                try {
                  return DtEmpresaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _asEmpresa;
    });
    _safeInit(() {
      _asClientes = prefs
              .getStringList('ff_asClientes')
              ?.map((x) {
                try {
                  return DtClientesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _asClientes;
    });
    _safeInit(() {
      _TokenAPI = prefs.getString('ff_TokenAPI') ?? _TokenAPI;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DtEmpresaStruct> _asEmpresa = [];
  List<DtEmpresaStruct> get asEmpresa => _asEmpresa;
  set asEmpresa(List<DtEmpresaStruct> value) {
    _asEmpresa = value;
    prefs.setStringList(
        'ff_asEmpresa', value.map((x) => x.serialize()).toList());
  }

  void addToAsEmpresa(DtEmpresaStruct value) {
    asEmpresa.add(value);
    prefs.setStringList(
        'ff_asEmpresa', _asEmpresa.map((x) => x.serialize()).toList());
  }

  void removeFromAsEmpresa(DtEmpresaStruct value) {
    asEmpresa.remove(value);
    prefs.setStringList(
        'ff_asEmpresa', _asEmpresa.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAsEmpresa(int index) {
    asEmpresa.removeAt(index);
    prefs.setStringList(
        'ff_asEmpresa', _asEmpresa.map((x) => x.serialize()).toList());
  }

  void updateAsEmpresaAtIndex(
    int index,
    DtEmpresaStruct Function(DtEmpresaStruct) updateFn,
  ) {
    asEmpresa[index] = updateFn(_asEmpresa[index]);
    prefs.setStringList(
        'ff_asEmpresa', _asEmpresa.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAsEmpresa(int index, DtEmpresaStruct value) {
    asEmpresa.insert(index, value);
    prefs.setStringList(
        'ff_asEmpresa', _asEmpresa.map((x) => x.serialize()).toList());
  }

  List<DtClientesStruct> _asClientes = [];
  List<DtClientesStruct> get asClientes => _asClientes;
  set asClientes(List<DtClientesStruct> value) {
    _asClientes = value;
    prefs.setStringList(
        'ff_asClientes', value.map((x) => x.serialize()).toList());
  }

  void addToAsClientes(DtClientesStruct value) {
    asClientes.add(value);
    prefs.setStringList(
        'ff_asClientes', _asClientes.map((x) => x.serialize()).toList());
  }

  void removeFromAsClientes(DtClientesStruct value) {
    asClientes.remove(value);
    prefs.setStringList(
        'ff_asClientes', _asClientes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAsClientes(int index) {
    asClientes.removeAt(index);
    prefs.setStringList(
        'ff_asClientes', _asClientes.map((x) => x.serialize()).toList());
  }

  void updateAsClientesAtIndex(
    int index,
    DtClientesStruct Function(DtClientesStruct) updateFn,
  ) {
    asClientes[index] = updateFn(_asClientes[index]);
    prefs.setStringList(
        'ff_asClientes', _asClientes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAsClientes(int index, DtClientesStruct value) {
    asClientes.insert(index, value);
    prefs.setStringList(
        'ff_asClientes', _asClientes.map((x) => x.serialize()).toList());
  }

  String _TokenAPI = '';
  String get TokenAPI => _TokenAPI;
  set TokenAPI(String value) {
    _TokenAPI = value;
    prefs.setString('ff_TokenAPI', value);
  }

  bool _encontrou = false;
  bool get encontrou => _encontrou;
  set encontrou(bool value) {
    _encontrou = value;
  }

  List<DtOrcamentoStruct> _asPedido = [];
  List<DtOrcamentoStruct> get asPedido => _asPedido;
  set asPedido(List<DtOrcamentoStruct> value) {
    _asPedido = value;
  }

  void addToAsPedido(DtOrcamentoStruct value) {
    asPedido.add(value);
  }

  void removeFromAsPedido(DtOrcamentoStruct value) {
    asPedido.remove(value);
  }

  void removeAtIndexFromAsPedido(int index) {
    asPedido.removeAt(index);
  }

  void updateAsPedidoAtIndex(
    int index,
    DtOrcamentoStruct Function(DtOrcamentoStruct) updateFn,
  ) {
    asPedido[index] = updateFn(_asPedido[index]);
  }

  void insertAtIndexInAsPedido(int index, DtOrcamentoStruct value) {
    asPedido.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
