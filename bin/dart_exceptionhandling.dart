import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Digite um número: ");
  var line = stdin.readLineSync(encoding: utf8);

  try {
    double numero = double.parse(line ?? "");
    print(numero);
  } catch (e) {
    print("Número inválido: $line");
  } finally {
    print("Executando finally");
  }

}