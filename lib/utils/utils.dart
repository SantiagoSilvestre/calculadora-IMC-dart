import 'dart:convert';
import 'dart:io';

import 'package:caculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:caculadora_imc/data/models/pessoa.dart';

class Utils {
  static Pessoa configurarPessoa() {
    var name = "";
    name = lerString("Digite seu nome: ");

    if (name.isEmpty) {
      throw NomeInvalidoException();
    }

    var peso = lerDouble("Digite seu peso(em kilos)");
    var altura = lerDouble("Digite sua altura(em metros)");

    return Pessoa(name: name, peso: peso, altura: altura);
  }

  static String lerString(String text) {
    print(text);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerDouble(String text) {
    double? doubleValue;
    do {
      print(text);
      doubleValue = double.tryParse(stdin.readLineSync(encoding: utf8)!);
      if (doubleValue == null) {
        print("Valor digitado inválido, por favor insira um número válido");
      }
    } while (doubleValue == null);

    return doubleValue;
  }
}
