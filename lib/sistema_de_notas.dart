import 'dart:io';

import 'package:dart_exceptionhandling/exceptions/nome_invalido_exception.dart';
import 'package:dart_exceptionhandling/models/aluno.dart';
import 'package:dart_exceptionhandling/models/console_utils.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  var line = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  try {
    if (line.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException { //o "on" significa: neste erro faça isto, e ao chegar no catch é quando não tem mais o que fazer
    print(NomeInvalidoException);
    exit(0); //podemos utilizar o exit para parar a aplicação
  } catch (e) { //e podemos utilizar outro catch para outras exceções
    print(e);
    exit(0);
  } 
  var aluno = Aluno(line);
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