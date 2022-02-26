import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  final nomUtilisateur = demanderNomUtilisateur();
  print("Bonjour $nomUtilisateur!");

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
        demarrerPartie(nomUtilisateur);
        break;
      case 2:
        afficherPreferences(nomUtilisateur);
        break;
      case choixQuitter:
        quitter();
        break;
      default:
        print("Je ne comprends pas votre choix :(");
    }
  } while (choixUtilisateur != choixQuitter);
}

String demanderNomUtilisateur() {
  String nomUtilisateur;
  bool saisieValide;
  do {
    nomUtilisateur = readText("Quel est votre nom ?");
    saisieValide = true;
    if (nomUtilisateur.length < 3) {
      print("Veuillez entrer un nom d'utilisateur plus long");
      saisieValide = false;
    } else if (nomUtilisateur.length > 20) {
      print("Veuillez entrer un nom d'utilisateur plus court");
      saisieValide = false;
    } else if (nomUtilisateur == "Maxime") {
      print("Il n'existe qu'un seul maxime, ça n'est pas vous! Mouah ah ah!");
      saisieValide = false;
    }
  } while (saisieValide == false);

  return nomUtilisateur;
}

void demarrerPartie(String nom) {
  print("La partie va commencer");
  print("...en avant $nom");
  print("La partie est terminée");
}

void afficherPreferences(String nomUtilisateur) {
  print("Voici les préférences de $nomUtilisateur");
}

void quitter({String? utilisateur}) {
  if (utilisateur != null) {
    print("Au revoir $utilisateur !");
  } else {
    print("Bye bye");
  }
}
