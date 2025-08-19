import 'dart:io';

List<String> itens = ["Lápis de Cor com 32 cores", "Borracha", "Apontador", "Caneta preta", "Giz de cera com 12 cores"];
List<double> precos = [20.00, 5.00, 10.00, 2.50, 7.00];
List<int> estoque = [10, 20, 7, 30, 10];
List<String> carrinho = [];

void main (){
  String nome = "";
  String cpf = "";

  while((nome == null || nome.trim().isEmpty) || (cpf == null || cpf.trim().isEmpty)){
    print("Bem vindo a Papelaria Céu Azul!");

    stdout.write("Para começar, digite o seu nome para confirmarmos o cadastro: ");
    nome =stdin.readLineSync()!;

    stdout.write("Digite o seu CPF: ");
    cpf =stdin.readLineSync()!;

  

     if ((nome == null || nome.trim().isEmpty) || (cpf == null || cpf.trim().isEmpty)) { 

      print("Os dados não podem ser nulos. Por favor, informe um valor válido."); 
    } 

  }

  int escolha = 1;
  double total = 0;

  while (escolha == 1){
    stdout.write('\x1B[2J\x1B[0;0H');
    ListaProdutos();
    stdout.write("Digite o número do produto que deseja colocar em seu carrinho: ");
    int produto = int.parse(stdin.readLineSync()!);

    if (produto <= 5 && produto > 0){
      stdout.write("Digite a quantidade a ser adicionada no carrinho: ");
      int qtde = int.parse(stdin.readLineSync()!);

      if (qtde > estoque[produto - 1] || qtde == null){
          print("A quantidade digitada é inválida.");
      }

      if (VerificaEstoque(produto, qtde)){
        total += precos[produto - 1] * qtde;
        carrinho.add("${itens[produto - 1]} - Quantidade: $qtde - Valor: ${precos[produto - 1] * qtde}");
      }

      print("Deseja escolher mais produtos?");
      stdout.write("1- Sim\n2- Não");
      escolha = int.parse(stdin.readLineSync()!);
    }
    else{
        print("O número do produto digitado é inválido, digite um dos valores mostrados no menu para continuar");
    }

    
  }

  String pagamento = Pagamento(total);

  ImprimeRecibo(total, pagamento, nome, cpf);

}

void ListaProdutos (){
  for(int i = 0; i < 5; i++){
      print("=============== Produto ${i+1} ===============");
      print("${i+1} - ${itens[i]}");
      print("Preço: ${precos[i]}");
      print("quantidade em estoque: ${estoque[i]}");
    }

}

bool VerificaEstoque(int produto, int quantidade){
  if(quantidade <= 0){
    print("A quantidade digitada é inválida!");
    return false;
  }

  if(quantidade > estoque[produto - 1]){
    print("A quantidade digitada é maior do que o que temos disponível em nosso estoque. Informe um valor válido.");
    return false;
  }
  else{
    estoque[produto -1] = estoque[produto - 1] - quantidade;
    return true;
  }
}




void MenuPagamento(){
  stdout.write('\x1B[2J\x1B[0;0H');
  print("\n\n===============================================");
  print("1- PIX");
  print("2- Dinheiro");
  print("3- Cartão de Débito");
  print("4- Cartão de Crédito");
  print("====================================================\n\n");
}


String Pagamento(double total){
  MenuPagamento();
  int escolha = int.parse(stdin.readLineSync()!);

  switch(escolha){
    case 1: 
      print("Valor total a pagar: $total");
      print("Scaneie o QRcode para pagamento na máquina");
      print("Processando pagamento.....");
      print("Pagamento efetuado com sucesso!");
      print("Muito obrigado por comprar conosco, volte sempre!");
      return 'Pix';
      
    case 2:
      print("Valor total a pagar: $total");
      stdout.write("Digite o valor em dinheiro que vai usar para pagar a compra: ");
      double dinheiro = double.parse(stdin.readLineSync()!);

      double troco = dinheiro - total;
      print("Seu troco é de: $troco");
      

      print("Pagamento efetuado com sucesso!");
      print("Muito obrigado por comprar conosco, volte sempre!");
      return 'Dinheiro.\nTroco: $troco';

     case 3:
        print("Valor total a pagar: $total");
        print("Processando pagamento.....");
        print("Pagamento efetuado com sucesso!");
        print("Muito obrigado por comprar conosco, volte sempre!");
        return 'Cartão de débito';


     case 4:
      print("Valor total a pagar: $total");

      print("Escolha a forma que deseja pagar com o cartão de crédito:");
      stdout.write("1- A vista\n2- 2x sem juros \n3- 3x com 10% de juros");
      int opcao = int.parse(stdin.readLineSync()!);

      print("Processando pagamento.....");

      double total_juros = total;
      double parcela = total;

      switch (opcao){
        case 1:
          print("Valor total da parcela a pagar: $total");
          print("Pagamento efetuado com sucesso!");
          print("Muito obrigado por comprar conosco, volte sempre!");
          break; 
        case 2:
          parcela = total / 2;
          print("Valor total a pagar de cada parcela: $parcela");

          print("Pagamento da 1° parcela efetuado com sucesso!");
          print("Muito obrigado por comprar conosco, volte sempre!");
          break;
        
        case 3: 
          total_juros = total + (total * 0.10);
          parcela = total_juros/3;
          print("Valor total com juros a ser pagp: $total_juros");
          print("Valor total a pagar de cada parcela: $parcela");

          print("Pagamento da 1° parcela efetuado com sucesso!");
          print("Muito obrigado por comprar conosco, volte sempre!");
          break;
        default:
          print("Opção inválida");
          return 'Opção inválida';
      }
       print("Muito obrigado por comprar conosco, volte sempre!");
      return 'Cartão de crédito\n'
         'Total: $total\n'
         'Juros aplicado: ${total_juros - total}\n'
         'Total com juros: ${total_juros.toStringAsFixed(2)}\n'
         'Valor da parcela: ${parcela.toStringAsFixed(2)}';

      default: 
        print('Opção inválida');
        return 'Pagamento não realizado';
  }
    
}

void ImprimeRecibo(double total, String pgmto, String nome, String cpf){
  stdout.write('\x1B[2J\x1B[0;0H');
  print("======================= Resumo da Compra =========================");
  print("Nome do cliente: $nome");
  print("CPF do cliente: $cpf");
  carrinho.forEach((item) => print(item));
  print("Total da compra: $total");
  print("Forma de pagamento: $pgmto");
}
