import 'NE_PAS_TOUCHER/user_input.dart';
import 'choix_menu.dart';

void main() {
  final nomUtilisateur = demanderNomUtilisateur();
  print("Bonjour $nomUtilisateur!");

  ChoixMenu? choixUtilisateur;

  do {
    do {
      print("1 - Commencez la partie");
      print("2 - Accédez aux préférences");
      print("3 - Meilleurs scores");
      print("4 - Partie en ligne");
      print("5 - Quitter");
      final saisieUtilisateur = readInt("Entrez votre choix :");
      final indexChoixMenu = saisieUtilisateur - 1;
      if (indexChoixMenu < 0 || indexChoixMenu >= ChoixMenu.values.length) {
        print("Saisie incorrecte");
      } else {
        choixUtilisateur = ChoixMenu.values[indexChoixMenu];
      }
    } while (choixUtilisateur == null);

    switch (choixUtilisateur) {
      case ChoixMenu.Jouer:
        demarrerPartie(nomUtilisateur);
        break;
      case ChoixMenu.Preferences:
        afficherPreferences(nomUtilisateur);
        break;
      case ChoixMenu.Quitter:
        quitter();
        break;
      case ChoixMenu.Online:
        print("Jeux multijoueur");
        break;
      case ChoixMenu.Scores:
        print("Afficher les scores");
        break;
    }
  } while (choixUtilisateur != ChoixMenu.Quitter);
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
