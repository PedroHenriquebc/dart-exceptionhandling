import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }
}