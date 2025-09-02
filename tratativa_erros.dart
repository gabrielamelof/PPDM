import 'dart:io';

void main(){
  // stdout.write("Digite seu nome: ");
  // String? nome =stdin.readLineSync();

  // while(nome == null || nome.trim().isEmpty){ //isEmpty - verifica se é fazio / trim - ignora espações
  //   print("Existem dados vazios ou nulos!");
  //   nome =stdin.readLineSync();
  // }
  
  //   print("Logado com sucesso");

  // try{//tenta fazer algo
  //   print("Digite seu número: ");
  //   int numero = int.parse(stdin.readLineSync()!);
  // }catch(e){// e é o erro
  //   print("esse é o seu erro $e");
  // }finally{//execute independente do que aconteça
  // print('encerrando programa');
  // }

  try{//tenta fazer algo
    print("Digite seu número: ");
    int numero = int.parse(stdin.readLineSync()!);

    if(numero == int){
      print("número com sucesso");
    }
  }on FormatException{ //mostra mensagens peronalizadas para cada tipo de erro
    print("Digite apenas números!");
  }on TypeError{
    print("Conversão inválida");
  }
}