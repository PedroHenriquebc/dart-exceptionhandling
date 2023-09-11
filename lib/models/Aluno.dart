class Aluno {
  String _nome = "";
  List<double> _notas = [];

  Aluno(String nome) {
    _nome = nome;
  }

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
    var totalNotas = 0.0;
    for (var nota in _notas) {
      totalNotas = totalNotas + nota;
    }
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