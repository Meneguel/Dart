import 'dart:io';

main() {
  print("===Digite seu Peso===");

  var textPeso = stdin.readLineSync();
  var peso = double.parse(textPeso!);

  print("===Digite sua Altura===");

  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  var imcCalc = peso / (altura * altura);
  print(imcCalc);

  if (imcCalc < 18.5) {
    print("Voce está abaixo do peso ideal");
  } else if (imcCalc > 18.5 && imcCalc < 24.9) {
    print("Voce está na faixa de peso ideal");
  } else if (imcCalc > 24.9 && imcCalc < 29.9) {
    print("Voce está com sobrepeso");
  } else if (imcCalc > 29.9 && imcCalc < 34.9) {
    print("Voce está com obesidade grau 1");
  } else if (imcCalc > 34.9 && imcCalc < 39.9) {
    print("Voce está com obesidade grau 2");
  } else {
    print("Voce está com obesidade grau 3");
  }
}
