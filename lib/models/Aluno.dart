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

  @override
  String toString() {
    return {"nome": _nome, "Notas": _notas}.toString();
  }
}