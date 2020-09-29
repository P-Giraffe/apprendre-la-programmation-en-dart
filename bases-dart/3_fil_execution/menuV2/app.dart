import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  print("Bonjour!");

  int choixUtilisateur;
  const choixQuitter = 3;
  do {
    do {
      print("1 - Commencez la partie");
      print("2 - Accédez aux préférences");
      print("$choixQuitter - Quitter");
      choixUtilisateur = readInt("Entrez votre choix :");
      if (choixUtilisateur < 1 || choixUtilisateur > choixQuitter) {
        print("Saisie incorrecte");
      }
    } while (choixUtilisateur < 1 || choixUtilisateur > choixQuitter);

    switch (choixUtilisateur) {
      case 1:
        print("La partie va commencer");
        break;
      case 2:
        print("Voici les préférences");
        break;
      case 3:
        print("Bye bye");
        break;
      default:
        print("Je ne comprends pas votre choix :(");
    }
  } while (choixUtilisateur != choixQuitter);
}
