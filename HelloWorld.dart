import 'dart:io';

main() {
  print("Qual a sua Idade?");

  var input = stdin.readLineSync();
  var idade = int.parse(input!);
  if (idade >= 18) {
    print("Maior");
  } else {
    print("Menor");
  }
}
