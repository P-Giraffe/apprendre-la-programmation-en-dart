import 'dart:io';

String readText(String question) {
  print(question);
  return stdin.readLineSync() ?? "";
}

int readInt(String question) {
  int? typedValue;
  do {
    typedValue = int.tryParse(readText(question));
    if (typedValue == null) {
      print("Veuillez saisir un nombre entier valide.");
    }
  } while (typedValue == null);
  return typedValue;
}

double readDouble(String question) {
  double? typedValue;
  do {
    typedValue = double.tryParse(readText(question));
    if (typedValue == null) {
      print("Veuillez saisir un nombre réel valide.");
    }
  } while (typedValue == null);
  return typedValue;
}
