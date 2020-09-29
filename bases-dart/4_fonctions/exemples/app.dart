import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  String nom = readText("Quel est votre nom ?");
  String pass = demanderMotDePasse();
  print("Vous avez choisi le mot de passe suivant : $pass");
  int age = readInt("Quel est votre âge ?");
  direBonjour(nom, age: age);
  if (age >= 18) {
    print("Vous êtes majeur");
  } else {
    print("Vous êtes mineur");
  }
  direBonjour("Sheldon");
}

String demanderMotDePasse() {
  bool motDePassValide;
  String motDePasseChoisi;
  do {
    motDePasseChoisi = readText("Choisissez un mot de passe :");
    motDePassValide = (motDePasseChoisi.length >= 8);
  } while (motDePassValide == false);

  print(
      "Vous avez choisi le mot de passe $motDePasseChoisi, souvenez-vous en.");
  return motDePasseChoisi;
}

void direBonjour(String nomUtilisateur, {int age = 0}) {
  print("Bonjour $nomUtilisateur vous avez $age an(s)");
}
