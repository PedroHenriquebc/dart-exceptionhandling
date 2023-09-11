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

  static double? lerDouble(){
    var line = lerString();
    try {
      return double.parse(line);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }

  static double? lerDoubleComTextoComSaida(String texto, String saida) {
    do {
      try {
        var line = lerStringComTexto(texto);
        if (line == saida) {
          return null;
        }
        return double.parse(line);
      } catch (e) {
        print("Nota inválida!");
      }
    } while (true);
  }
}