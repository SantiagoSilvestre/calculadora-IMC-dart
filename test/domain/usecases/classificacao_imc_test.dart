import 'package:caculadora_imc/domain/usecases/classificacao_imc.dart';
import 'package:test/test.dart';

void main() {
  group('getClassificacaoImc', () {
    test('returns "Magreza grave" for IMC < 16', () {
      expect(ClassificacaoImc.getClassificacaoImc(15), equals("Magreza grave"));
    });

    test('returns "Magreza moderada" for 16 <= IMC < 17', () {
      expect(ClassificacaoImc.getClassificacaoImc(16.5),
          equals("Magreza moderada"));
    });

    test('returns "Magreza leve" for 17 <= IMC < 18.5', () {
      expect(ClassificacaoImc.getClassificacaoImc(18), equals("Magreza leve"));
    });

    test('returns "Saudável" for 18.5 <= IMC < 25', () {
      expect(ClassificacaoImc.getClassificacaoImc(22), equals("Saudável"));
    });

    test('returns "Sobrepeso" for 25 <= IMC < 30', () {
      expect(ClassificacaoImc.getClassificacaoImc(27), equals("Sobrepeso"));
    });

    test('returns "Obesidade Grau I" for 30 <= IMC < 35', () {
      expect(
          ClassificacaoImc.getClassificacaoImc(32), equals("Obesidade Grau I"));
    });

    test('returns "Obesidade Grau II (severa)" for 35 <= IMC < 40', () {
      expect(ClassificacaoImc.getClassificacaoImc(37),
          equals("Obesidade Grau II (severa)"));
    });

    test('returns "Obesidade Grau III (mórbida)" for IMC >= 40', () {
      expect(ClassificacaoImc.getClassificacaoImc(42),
          equals("Obesidade Grau III (mórbida)"));
    });

    test('returns "Valor inválido" for negative IMC', () {
      expect(
          ClassificacaoImc.getClassificacaoImc(-1), equals("Valor inválido"));
    });
  });
}
