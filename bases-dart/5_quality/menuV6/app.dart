import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  final nomUtilisateur = demanderNomUtilisateur();
  print("Bonjour $nomUtilisateur!");

  int choixUtilisateur;
  const choixPartie = 1;
  const choixPreferences = 2;
  const choixScores = 3;
  const choixQuitter = 4;
  const premierChoix = choixPartie;
  const dernierChoix = choixQuitter;
  do {
    do {
      print("$choixPartie - Commencez la partie");
      print("$choixPreferences - Accédez aux préférences");
      print("$choixScores - Meilleurs scores");
      print("$choixQuitter - Quitter");
      choixUtilisateur = readInt("Entrez votre choix :");
      if (choixUtilisateur < premierChoix || choixUtilisateur > dernierChoix) {
        print("Saisie incorrecte");
      }
    } while (
        choixUtilisateur < premierChoix || choixUtilisateur > dernierChoix);

    switch (choixUtilisateur) {
      case choixPartie:
        demarrerPartie(nomUtilisateur);
        break;
      case choixPreferences:
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
  const taillePseudoMin = 3;
  const taillePseudoMax = 20;
  do {
    nomUtilisateur = readText("Quel est votre nom ?");
    if (nomUtilisateur.length < taillePseudoMin) {
      print("Veuillez entrer un nom d'utilisateur plus long");
      saisieValide = false;
    } else if (nomUtilisateur.length > taillePseudoMax) {
      print("Veuillez entrer un nom d'utilisateur plus court");
      saisieValide = false;
    } else if (nomUtilisateur == "Maxime") {
      print("Il n'existe qu'un seul maxime, ça n'est pas vous! Mouah ah ah!");
      saisieValide = false;
    } else {
      saisieValide = true;
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
