import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  const choixAjouter = 1;
  const choixAfficher = 2;
  const choixQuitter = 3;
  const premierChoixPossible = choixAjouter;
  const dernierChoixPossible = choixQuitter;
  int choixUtilisateur;
  final Map<String, List<double>> listePrincipale = Map();
  do {
    do {
      print("$choixAjouter - Ajouter des notes");
      print("$choixAfficher - Afficher les moyennes");
      print("$choixQuitter - Quitter");
      choixUtilisateur = readInt("Que souhaitez-vous faire ?");
    } while (choixUtilisateur < premierChoixPossible ||
        choixUtilisateur > dernierChoixPossible);

    switch (choixUtilisateur) {
      case choixAjouter:
        ajouterNotes(listePrincipale);
        break;
      case choixAfficher:
        afficherMoyennes(listePrincipale);
        break;
      case choixQuitter:
        quitter();
        break;
      default:
    }
  } while (choixUtilisateur != choixQuitter);
}

void ajouterNotes(Map<String, List<double>> listeMatieres) {}

void afficherMoyennes(Map<String, List<double>> listeMatieres) {}

void quitter() {}
