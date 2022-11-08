import 'dart:async';

import 'NE_PAS_TOUCHER/user_input.dart';
import 'point_cardinal.dart';

void main() {
  enumerations();
}

void enumerations() {
  final direction = PointCardinal.Sud;
  if (direction == PointCardinal.Nord) {
    print("Passez le bonjour au Père Noël");
  }
  switch (direction) {
    case PointCardinal.Nord:
      print("Passez le bonjour au Père Noël");
      break;
    case PointCardinal.Sud:
      print("Bienvenue au soleil! ☀️");
      break;
    default:
      print("Choisissez entre le Surf et le Ski");
      break;
  }
}

void chainesDeCaracteres() {
  String user = "Ted Lasso ";
  user = user.trim();
  print(user.length);
  print(user.toLowerCase());
  print(user.toUpperCase());
}

void tableauxEtClosures() {
  var listeNotes = [14.5, 12.0, 7.5, 17.75, 19.0];

  listeNotes = listeNotes.where((note) {
    if (note > 10) {
      return true;
    } else {
      return false;
    }
  }).toList();

  var listeNotesAmericaines = listeNotes.map((note) {
    String lettre;
    if (note > 15) {
      lettre = "A";
    } else if (note > 10) {
      lettre = "B";
    } else {
      lettre = "C";
    }
    return lettre;
  }).toList();

  for (var lettre in listeNotesAmericaines) {
    print(lettre);
  }
}

void closures() {
  print("Avant le timer");
  Timer(Duration(seconds: 3), () {
    print("Feux!");
  });
  print("Timer prêt");
}

void conversionDeTypes() {
  int note1 = 20;
  int note2 = (19.99).toInt();
  double note3 = note1.toDouble();
  print("note 1 : $note1");
  print("note 2 : $note2");
  print("note 3 : $note3");
}

void gestionValeursNulles() {
  String? user;

  direBonjour(user ?? "Bob");
}

void direBonjour(String prenom) {
  if (prenom != null) {
    print("Bonjour $prenom, votre prénom comporte ${prenom.length} lettres");
  }
}
