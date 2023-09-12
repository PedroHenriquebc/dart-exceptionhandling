class Aluno {
  String _nome = "";
  final List<double> _notas = [];

  Aluno(this._nome); // isto é uma forma simplificada de bindar um construtor

  // Aluno(String nome) {
  //   _nome = nome;
  // }

  String getNome() {
    return _nome;
  }

  void setNome(String novoNome) {
    _nome = novoNome;
  }

  List<double> getNotas() {
    return _notas;
  }

  void addNotas(double nota) {
    _notas.add(nota);
  }

  double retornaMedia() {
    //itera uma lista incremetando cada element da lista no value
    var totalNotas = _notas.reduce((value, element) => value + element);
    // for (var nota in _notas) {
    //   totalNotas = totalNotas + nota;
    // }
    var media = totalNotas / _notas.length;
    return media.isNaN ? 0.0 : media;
  }

  bool aprovado(double notaDeCorte) {
    var media = retornaMedia();
    return media >= notaDeCorte;
  }

  @override
  String toString() {
    return {"nome": _nome, "Notas": _notas, "Média":retornaMedia().toStringAsFixed(2), }.toString();
  }
}