import 'package:dart_exceptionhandling/models/Aluno.dart';
import 'package:dart_exceptionhandling/models/ConsoleUtils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  var line = ConsoleUtils.lerStringComTexto("Digite o nome do aluno");
  var Aluno = new Aluno(line);
}