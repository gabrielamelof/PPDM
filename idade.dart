import 'dart:io';

void main(){
  print("Digite a sua idade: ");
  String? entrada = stdin.readLineSync();
  int idade = int.parse(entrada!); //Converte o valor do input apenas se houver dados por causa do "!"

  if (idade >= 18){
    print("Você pode dirigir");
  }
  else{
    print("Pegue um uber");
  }
}

