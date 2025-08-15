import 'dart:io'; 

void main() { 

  double? valor; 

  int? opcao; 

 

  while (valor == null || valor <= 0) { 

    stdout.write("Informe o valor da compra: "); 

    String? entrada = stdin.readLineSync(); 

 

    if (entrada == null || entrada.trim().isEmpty) { 

      print("Valor não pode ser nulo."); 
    } 

 

    try { 

      valor = double.parse(entrada!); 

      if (valor <= 0) { 

        print("O valor deve ser maior que zero."); 

      } 

    } on FormatException{ 

      print("Digite apenas números."); 

    } 

  } 

 

  print("Valor informado: R\$ ${valor.toStringAsFixed(2)}"); 

 

  do { 

    print("digite uma opcao de pagamento"); 
    print("1- Pix");
    print("2- Dinheiro");
    print("3- Cartão");

    opcao = int.parse(stdin.readLineSync()!); 

 

    switch(opcao) { 

        case 1:  

          print("Pagamento com pix"); 

       

        case 2: 

          print("Pagamento dinheiro"); 

        case 3: 

          print("pagamento cartao"); 

 

        default: 

          print("Entrada invalida tente novamente"); 

    } 

 

 

  }while(opcao < 1 || opcao > 3); 

 

 

} 