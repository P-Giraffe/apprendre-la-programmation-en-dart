import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  const choixAjouter = 1;
  const choixAfficher = 2;
  const choixQuitter = 3;
  const premierChoixPossible = choixAjouter;
  const dernierChoixPossible = choixQuitter;
  int choixUtilisateur;
  final Map<String, List<double>> listePrincipale = Map();
  listePrincipale["Maths"] = [13.5, 15, 7.5, 18.75];
  listePrincipale["Algo"] = [9, 17.5, 12.75];
  listePrincipale["Anglais"] = [];
  do {
    do {
      print("$choixAjouter - Ajouter des notes");
      print("$choixAfficher - Afficher les moyennes");
      print("$choixQuitter - Quitter");
      choixUtilisateur = readInt("\nQue souhaitez-vous faire ?");
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

void ajouterNotes(Map<String, List<double>> listeMatieres) {
  // 1 - Demander le nom de la matière
  String nomMatiere;
  do {
    nomMatiere = readText("Quelle est la matière ?");
  } while (nomMatiere.length <= 0);

  // 2 - Combien de notes pour cette matière
  int nombreNotes;
  do {
    nombreNotes = readInt("Combien de notes à saisir en $nomMatiere ?");
  } while (nombreNotes < 0);

  // 3 - Demander chacune des notes et les insérer dans listeMatieres
  if (nombreNotes > 0) {
    final listeNotesDeLaMatiere = listeMatieres[nomMatiere] ?? [];
    for (var numeroNote = 1; numeroNote <= nombreNotes; numeroNote++) {
      double note;
      do {
        note = readDouble("Entrez la note $numeroNote en $nomMatiere");
      } while (note < 0 || note > 20);
      listeNotesDeLaMatiere.add(note);
    }
    listeMatieres[nomMatiere] = listeNotesDeLaMatiere;
  }
}

void afficherMoyennes(Map<String, List<double>> listeMatieres) {
  for (final infosMatiere in listeMatieres.entries) {
    print(infosMatiere.key);
    final listeNotes = infosMatiere.value;
    if (listeNotes.isNotEmpty) {
      var somme = 0.0;
      for (final note in listeNotes) {
        print(" -> $note");
        somme = somme + note;
      }
      final moyenne = (somme / listeNotes.length*100).roundToDouble()/100;
      print("Moyenne = ${moyenne}\n");
    } else {
      print(" -> Pas de note\n");
    }
  }
}

void quitter() {
  print("Bye bye");
}
