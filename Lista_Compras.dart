import 'dart:io';

List<String> produtos = [];
main() {
  bool condicao = true;
  while (condicao) {
    print("Adicione um produto");
    String? text = stdin.readLineSync();
    if (text == "sair") {
      print("programa finalizado");
      condicao = false;
    } else if (text == "imprimir") {
      imprimir();
      // for (var i = 0; i < produtos.length; i++) {
      // print("Ïtem $i - ${produtos[i]}");
    } else if (text == "remover") {
      remover();
      // print("===qual item deseja remiover?===");

      //for (var i = 0; i < produtos.length; i++) {
      // print("Ïtem $i - ${produtos[i]}");
    }
    //var textItem = stdin.readLineSync();
    // var item = int.parse(textItem!);
    // produtos.removeAt(item);
    // print("=== item removido ===");
    // print("=== itens atualmente na lista");
    // for (var i = 0; i < produtos.length; i++) {
    //  print("Ïtem $i - ${produtos[i]}");
    else {
      produtos.add(text!);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

imprimir() {
  for (var i = 0; i < produtos.length; i++) {
    print("Ïtem $i - ${produtos[i]}");
  }
}

remover() {
  print("===qual item deseja remiover?===");
  imprimir();
  var textItem = stdin.readLineSync();
  var item = int.parse(textItem!);
  produtos.removeAt(item);
  print("\n");
  print("=== item removido ===");
  print("=== itens atualmente na lista ===");
  imprimir();
}
