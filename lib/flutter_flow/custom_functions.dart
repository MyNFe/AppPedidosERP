import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool? testaCodigoEmpresa(
  List<DtEmpresaStruct> list,
  String code,
) {
  // receives a list datatype and a code and returns true if the code is already registered in the list and false if it is not registered
  bool isCodeRegistered = false;
  for (DtEmpresaStruct empresa in list) {
    if (empresa.codigo == code) {
      isCodeRegistered = true;
      break;
    }
  }
  return isCodeRegistered;
}

String convertIntToStr(int valorInt) {
  // receber valor string e retornar o mesmo valor no formato double

  return valorInt.toString();
}

bool? testaCodigoCliente(
  List<DtClientesStruct> list,
  String code,
) {
  // receives a list datatype and a code and returns true if the code is already registered in the list and false if it is not registered
  bool isCodeRegistered = false;
  for (DtClientesStruct clientes in list) {
    if (clientes.codigo == code) {
      isCodeRegistered = true;
      break;
    }
  }
  return isCodeRegistered;
}

double somarOrcamento(List<DtOrcamentoStruct> dtOrcamento) {
  // the function receives a datatype list of the document type and adds the "VALOR_UNI" field, which must be converted from string to double
  double total = 0.0;
  String vReplaceVirg = "";
  for (var orcamento in dtOrcamento) {
    vReplaceVirg = orcamento.valorUni.replaceAll(",", "");
    total += (double.parse(vReplaceVirg) * orcamento.qtdItens);
  }
  return total;
}

double convertStrToDouble(String valorStr) {
  // receber valor string e retornar o mesmo valor no formato double

  valorStr = valorStr.replaceAll(",", "");

  return double.parse(valorStr);
}
