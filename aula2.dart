import 'dart:io';

void main(){
  print('Bem vindo ao menu!');
  print("1- Comprar arroz");
  print("2- Comprar feijão");
  print("3- Comprar carne");

  print("Digite a sua opção: ");
  int opcao = int.parse(stdin.readLineSync()!);


  switch(opcao){
    case 1: 
    print("Arroz adicionado a sua sacola");
    break;
    case 2: 
    print("Feijão adicionado a sua sacola");
    break;
    case 3: 
    print("Carne adicionado a sua sacola");
    break;
    default:
    print("Opção inválida");
    break;
  }
}