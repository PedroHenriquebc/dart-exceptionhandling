import 'package:dart_exceptionhandling/models/Aluno.dart';
import 'package:dart_exceptionhandling/models/ConsoleUtils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  var line = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  var aluno = new Aluno(line);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida("Digite a nota ou S para sair:", "S");
    if (nota != null) {
      aluno.addNotas(nota);
    }
  } while (nota != null);

  print(aluno);
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} foi aprovado!");
  } else {
    print("O aluno ${aluno.getNome()} foi reprovado!");
  }
}