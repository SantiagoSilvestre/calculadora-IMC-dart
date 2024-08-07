class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;
  String _classificacao = "";

  Pessoa({required name, required peso, required altura}) {
    _nome = name;
    _peso = peso;
    _altura = altura;
  }

  // Gets e Setts
  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setImc(double imc) {
    _imc = imc;
  }

  double getImc() {
    return _imc;
  }

  void setClassificacao(String classificacao) {
    _classificacao = classificacao;
  }

  String getClassificacao() {
    return _classificacao;
  }

  String imprimirFicha() =>
      "\n----------begin Ficha \n Nome: $_nome, peso: $_peso, altura: $_altura \n"
      "IMC: ${_imc.toStringAsFixed(2)}, Classificado: $_classificacao \n"
      "------ fim -----";
}
