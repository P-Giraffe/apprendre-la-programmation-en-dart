import 'dart:async';

import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  tableauxEtClosures();
}

void tableauxEtClosures() {
  var listeNotes = [14.5, 12.0, 7.5, 17.75, 19];
  var listeNotesLettre = listeNotes.map((note) {
    String noteEnLettre;
    if (note > 17) {
      noteEnLettre = "A";
    } else if (note > 10) {
      noteEnLettre = "B";
    } else {
      noteEnLettre = "C";
    }
    return noteEnLettre;
  });
  for (var lettre in listeNotesLettre) {
    print(lettre);
  }

  listeNotes = listeNotes.where((note) {
    if (note > 10) {
      return true;
    } else {
      return false;
    }
  }).toList();
}

void closures() {
  print("Avant le timer");
  Timer(Duration(seconds: 3), () {
    print("Feu!");
  });
  print("Timer prêt");
}

void conversionDeTypes() {
  int note1 = 20;
  int note2 = (19.5).toInt();
  double note3 = note1.toDouble();
  print("note 1 : $note1");
  print("note 2 : $note2");
  print("note 3 : $note3");
}

void valeursNulles() {
  String user = "Ted";
  direBonjour(user);
}

void direBonjour(String prenom) {
  print("Bonjour $prenom, votre prénom comporte ${prenom.length} lettres");
}
