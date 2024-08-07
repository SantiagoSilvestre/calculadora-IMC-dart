import 'package:caculadora_imc/domain/usecases/calcular_imc.dart';
import 'package:caculadora_imc/domain/usecases/classificacao_imc.dart';
import 'package:caculadora_imc/exceptions/divisao_zero_exception.dart';
import 'package:caculadora_imc/exceptions/nome_invalido_exception.dart';
import 'package:caculadora_imc/utils/utils.dart';

void initCalculadoraImc() {
  try {
    print("Bem vindo a cálculadora de IMC!!!");
    print("Vamos iniciar? Por favor, informe seus dados:");

    var pessoa = Utils.configurarPessoa();
    double imc = CalcularImc.calcularImc(pessoa.getPeso(), pessoa.getAltura());
    pessoa.setImc(imc);
    pessoa.setClassificacao(ClassificacaoImc.getClassificacaoImc(imc));
    print(pessoa.imprimirFicha());
  } on NomeInvalidoException catch (e) {
    print(e);
  } on DivisaoZeroException catch (e) {
    print(e);
  } catch (e) {
    print("Um erro inesperado ocorreu!");
  } finally {
    print("Fique de olho e sua saúde!");
  }
}
