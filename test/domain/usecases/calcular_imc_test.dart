import 'package:caculadora_imc/domain/usecases/calcular_imc.dart';
import 'package:caculadora_imc/exceptions/divisao_zero_exception.dart';
import 'package:test/test.dart';

void main() {
  group('calcularImc', () {
    test('calculates IMC correctly', () {
      double peso = 70;
      double altura = 1.75;
      double expectedImc = peso / (altura * altura);

      expect(CalcularImc.calcularImc(peso, altura), equals(expectedImc));
    });

    test('throws DivisaoZeroException when altura is zero', () {
      double peso = 70;
      double altura = 0;

      expect(() => CalcularImc.calcularImc(peso, altura),
          throwsA(isA<DivisaoZeroException>()));
    });

    test('returns zero when peso is zero', () {
      double peso = 0;
      double altura = 1.75;

      expect(CalcularImc.calcularImc(peso, altura), equals(0));
    });
  });
}
