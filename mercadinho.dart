import 'dart:io';

void main(){

  List<String> itens = [];
  List<double> precos = [];
  int opcao, opcao2;
  double total = 0, preco, valor_final = 0;

  print("-------------------------- Bem vindo ao mercadinho!--------------");
  print("=====================Itens Disponíveis==========================");

  print("1- maçã");
  print("2- macarrão");
  print("3- queijo");
  print("4- molho de tomate");
  print("5- chocolate");

  stdout.write("digite o seu cpf: ");
  String? cpf = stdin.readLineSync();

  do{
    stdout.write("Digite um item (use números): ");
    int contador = int.parse(stdin.readLineSync()!);

    if(contador == 1){
    itens.add("maçã"); 
    }
    else if(contador == 2){
        itens.add("macarrão"); 
    }
    else if(contador == 3){
      itens.add("queijo");
    }
    else if(contador == 4){
      itens.add("molho de tomate");
    }
    else if(contador == 5){
      itens.add("chocolate");
    }
    else{
      print("Valor inválido!");
      break;
    }

    stdout.write("Digite o valor desse item: ");
    preco = double.parse(stdin.readLineSync()!);

    total += preco;

    print("item adicionado com sucesso!");
    print("deseja incluir mais itens?");
    stdout.write("1- Sim\n2-Não");
    opcao = int.parse(stdin.readLineSync()!);

  }while(opcao != 2);

  print("========================= Resumo da sua compra =============================");

  print("Itens comprados:");
  print(itens);

  print("Valor total da compra: $total");

  do{
    print("Escolha a sua forma de pagamento: ");
    print("1- À vista (com 10% de desconto)");
    print("2- Parcelado no cartão (com 10% de juros)");
    stdout.write("3- Fiado (com 15% a mais para pagar na próxima compra)");

    opcao2 = int.parse(stdin.readLineSync()!);

    switch(opcao2){
      case 1:
        valor_final = total - (total * 0.10);
        print("O valor final a ser pagp à vista é: $valor_final");
        break;
      case 2:
        stdout.write("Digite a quantidade de parcelas em que a compra será paaga: ");
        int parcelas = int.parse(stdin.readLineSync()!);
        
        valor_final = total + (total * 0.10);
        double valor_parcelado = valor_final / parcelas;

        print("O valor final a ser pago pela compra é: $valor_final");
        print("O valor de cada parcela será de: $valor_parcelado");
        break;
      case 3:
        valor_final = total + (total * 0.15);
        print("O valor final será de $valor_final. Esse valor será adicionado ao total da sua próxima compra em nosso mercado.");
        break;
      default:
        print("Insira uma opção válida!");
        break;
    }
  }while(opcao2 != 1 && opcao2 != 2 && opcao2 != 3);

  print("===================================================================================");
  print("Muito obrigado por escolher comprar conosco! Até a próxima.");

  


}