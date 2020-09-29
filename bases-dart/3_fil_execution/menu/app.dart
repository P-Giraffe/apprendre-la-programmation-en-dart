import 'NE_PAS_TOUCHER/user_input.dart';

void main() {
  print("Bonjour!");
  print("1 - Commencez la partie");
  print("2 - Accédez aux préférences");
  print("3 - Quitter");
  final choixUtilisateur = readInt("Entrez votre choix :");
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
}
