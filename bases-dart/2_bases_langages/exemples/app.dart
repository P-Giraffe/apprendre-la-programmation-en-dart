import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  print("Bonjour!");
  final nomUtilisateur = readText("Entrez votre pseudo :");
  var score = 0;
  const valeurPartie = 10;
  print("$nomUtilisateur : $score");
  score = score + valeurPartie;
  print("$nomUtilisateur : $score");
}
