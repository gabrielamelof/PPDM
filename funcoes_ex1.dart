import 'dart:io';

void main(){
  stdout.write("Digite o valor inicial do produto: ");
  double preco = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a porcentagem de desconto que será aplicada no produto: ");
  double desconto = double.parse(stdin.readLineSync()!);

  double valorfinal = calcularDesconto(preco, desconto);

  print("O valor do produto com desconto será de: $valorfinal");


}

double calcularDesconto(double preco, double desconto){
  double valorfinal = preco - (preco * (desconto/100)) ;
  return valorfinal;
}