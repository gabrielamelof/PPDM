
import 'dart:io';

void main(){
  print("Digite o seu nome: ");
  String? nome = stdin.readLineSync();

  print("Digite o valor do primeiro salário: ");
  String? entrada1 = stdin.readLineSync();
  double salario1 = double.parse(entrada1!);

  print("Digite o valor do segundo salário: ");
  String? entrada2 = stdin.readLineSync();
  double salario2 = double.parse(entrada2!);

  print("Digite o valor do terceiro salário: ");
  String? entrada3 = stdin.readLineSync();
  double salario3 = double.parse(entrada3!);


  if (salario1 < 0 || salario2 < 0 || salario3 < 0){
    print("$nome, um dos valores é negativo, reinicie o programa e inisra apenas números negativos.");
  }
  else{
    double media = (salario1 +  salario2 + salario3)/3;

    if(media > 3000){
      print("$nome, sua média salarial dos últimos três meses é: ${media.toStringAsFixed(2)}");
      print("Parabéns! A sua média salarial está regular.");
    }
    else if (media >= 2000){
      print("$nome, sua média salarial dos últimos três meses é: ${media.toStringAsFixed(2)}");
      print("Atenção! A sua média salarial está fora do valor regular.");

    }
    else{
      print("$nome, sua média salarial dos últimos três meses é: ${media.toStringAsFixed(2)}");
      print("Atenção! A sua média salarial está muito abaixo da média regular.");

    }
  }
  }