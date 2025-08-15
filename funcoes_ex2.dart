import 'dart:ffi';
import 'dart:io';

void main(){
  stdout.write("Digite a sua idade: ");
  int idade = int.parse(stdin.readLineSync()!);

  bool resposta = ehMaiorIdade(idade);

  if (resposta == true){
    print("Eba! Você é maior de idade!");
  }
  else{
    print("Opa! Você ainda não é maior de idade");
  }

}

bool ehMaiorIdade(int idade){
  if(idade >= 18){
    return true;
  }
  else{
    return false;
  }

}