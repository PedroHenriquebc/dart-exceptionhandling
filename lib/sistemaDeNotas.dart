import 'dart:io';

import 'package:dart_exceptionhandling/exceptions/nomeInvalidoException.dart';
import 'package:dart_exceptionhandling/models/Aluno.dart';
import 'package:dart_exceptionhandling/models/ConsoleUtils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  var line = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  try {
    if (line.trim() == "") {
      throw NomeInvalidoException();
    }
  } catch (NomeInvalidoException) {
    print(NomeInvalidoException);
    exit(0); //podemos utilizar o exit para parar a aplicação
  } //catch (e) {} e podemos utilizar outro catch para outras exceções
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