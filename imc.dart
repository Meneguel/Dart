import 'dart:io';

main() {
  calculoImc();
}
// programa para calcular Imc
calculoImc() {
  print("===Digite seu Peso===");

  var textPeso = stdin.readLineSync();
  var peso = double.parse(textPeso!);

  print("===Digite sua Altura===");

  var textAltura = stdin.readLineSync();
  var altura = double.parse(textAltura!);

  double imc = calcImc(peso, altura);
  imprimirResultado(imc);
}
// funcao que calcula o Imc
double calcImc(double peso, double altura) {
  return peso / (altura * altura);
}
// imprimie o resultado baseado no Imc passado por parametro
imprimirResultado(double imc) {
  if (imc < 18.5) {
    print("Voce está abaixo do peso ideal");
  } else if (imc > 18.5 && imc < 24.9) {
    print("Voce está na faixa de peso ideal");
  } else if (imc > 24.9 && imc < 29.9) {
    print("Voce está com sobrepeso");
  } else if (imc > 29.9 && imc < 34.9) {
    print("Voce está com obesidade grau 1");
  } else if (imc > 34.9 && imc < 39.9) {
    print("Voce está com obesidade grau 2");
  } else {
    print("Voce está com obesidade grau 3");
  }
}
