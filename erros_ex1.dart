import 'dart:io';

void main(){
  stdout.write("Digite seu nome completo: ");
  String? nome =stdin.readLineSync();

  while(nome == null || nome.trim().isEmpty){ 
    print("Existem dados vazios ou nulos!");
    stdout.write("Digite seu nome completo: ");
    nome =stdin.readLineSync();
  }
  
    print("Logado com sucesso");
}