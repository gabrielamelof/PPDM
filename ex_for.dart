import 'dart:io';

void main(){

  stdout.write("Digite o valor da compra: ");
  double valor = double.parse(stdin.readLineSync()!);

  stdout.write("Digite a quantidade de parcelas: ");
  int parcelas = int.parse(stdin.readLineSync()!);

  double valor_parcela = valor / parcelas;

  for(int i = 0; i < parcelas; i++){
    print("O valor da parcela ${i + 1} é $valor_parcela");
  }

}