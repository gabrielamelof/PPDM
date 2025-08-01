import 'dart:io'; // Importa a biblioteca com as funções da linguagem


void main(){ //função principal para o código, sem ela não funciona
  print("Digite seu nome: ");
  String? nome = stdin.readLineSync(); //? indica que a variável pode ser nula
  String nome2 = nome!.toLowerCase();

  print("Olá, $nome"); 
  
  if(nome2 == "gabriela"){
    print("Oi, Gabiiiii :)");
  }
  else if (nome2 == "leticia"){
    print("Oi, ermãããããã :)");
  }
  else{
    print("Se retire");
  }

}