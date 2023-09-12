class NomeInvalidoException implements Exception {
  String error() => "Nome inválido!";

  @override
  String toString() {
    return "nomeInvalidoException: ${error()}";
  }
}