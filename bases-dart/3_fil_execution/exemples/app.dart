import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  print("Bonjour!");
  String message = readText("Quel est votre nom ?");
  int age;
  do {
    age = readInt("Quel est votre âge ?");
    if (age <= 0 || age >= 120) {
      print("Age incorrect");
    }
  } while (age <= 0 || age >= 120);

  print("Bonjour $message");
  if (age <= 0 || age >= 120 || age == 99) {
    print("Age incorrect");
  } else if (age >= 18) {
    print("Vous êtes majeur");
  } else if (age > 12) {
    print("Vous êtes un(e) ado");
  } else {
    print("Vous êtes un(e) enfant");
  }

  switch (age) {
    case 18:
      print("Vous nenez de devenir majeur");
      break;
    case 8:
      print("Vous venez d'avoir 8 ans");
      break;
    default:
      print("Age par defaut");
      break;
  }

  for (var compteur = 0; compteur < 5; compteur = compteur + 1) {
    print("Coup de pelle numéro $compteur");
  }

  var score = readInt("Entrez votre score initial :");
  while (score < 100) {
    final pointsMarques =
        readInt("Combien avez-vous marqué sur la dernière partie :");
    score = score + pointsMarques;
    print("Votre score vaut $score");
  }
}
