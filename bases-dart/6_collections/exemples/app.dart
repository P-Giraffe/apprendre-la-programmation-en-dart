import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  tableauxClesValeurs();
}

void tableauxClesValeurs() {
  Map<String, int> listeScores = {"Ian": 120, "Poppy": 121};
  listeScores.remove("Poppy");
  listeScores["Poppy"] = 121;
  listeScores["Poppy"] = 221;
}

void tableauxNumerotes() {
  List<int> listeScores = [120, 254, 14];
  listeScores.add(600);
  listeScores.insert(2, 300);
  listeScores.removeAt(2);

  modifTableau(listeScores);
  for (var score in listeScores) {
    print(score);
  }
}

void modifTableau(List<int> scores) {
  scores.removeAt(0);
}
