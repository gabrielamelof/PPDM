import 'dart:io';

void main(){

  print("Digite o nome do motorista: ");
  String? nome = stdin.readLineSync();

  print("Digite a velocidade em que o motorista estava: ");
  double velocidade = double.parse(stdin.readLineSync()!);

  double multa = 0;

  if(velocidade <= 60){
    print("Sem infração");
  }
  else{
    if (velocidade > 60 && velocidade <= 80){
        print("Infração leve");
        multa = 136.9;
      }
    else if (velocidade > 80 && velocidade <= 100){
        print("Infração média");
        multa = 250;
    }
    else{
      print("Infração grave");
      multa = 1000;
    }

    print("Escolha uma das opções:");
    print("1- Pagar á vista (10% de desconto)");
    print("2- Parcelar em duas vezes (sem juros)");
    print("3- Parcelar em 3x (com 10% de juros)");

    print("Digite a sua opção: ");
    int opcao = int.parse(stdin.readLineSync()!);

    double valor_final = 0;
    double parcelas = 0;

    switch(opcao){
      case 1:
        
        valor_final = multa - (multa * 0.10);
        print("O valor da multa a ser pago é: ${valor_final.toStringAsFixed(2)}");
        break;
      case 2: 
        parcelas = multa / 2;
        print("O valor da multa a ser pago é: $multa");
        print("O valor de cada parcela será: ${parcelas.toStringAsFixed(2)}");
        break;
      case 3: 
        valor_final = multa + (multa * 0.10);
        parcelas = valor_final / 3;
        print("O valor da multa a ser pago é: ${valor_final.toStringAsFixed(2)}");
        print("O valor de cada parcela será: ${parcelas.toStringAsFixed(2)}");
        break;
    }
      }
    
}