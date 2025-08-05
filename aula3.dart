import 'dart:io';

void main(){
//   String continuar = "sim";
//  do{
//   print("Bem vindo!");
//   print("1- opcção 1");
//   print("2- opção 2");
//   print("3- opção 3");

//   print("Deseja continuar comprando?");

//   continuar = stdin.readLineSync()!;
//  }while(continuar == "sim");

// String? senha = stdin.readLineSync();

// while(senha != "1234"){
//   stdout.write("tente novamente");
//   senha = stdin.readLineSync()!;
// }
// print("Acesso liberado");
// }


// int continuar = 0;

// do{
//   print("Bem vindo!");
//   print("1- opcção 1");
//   print("2- opção 2");
//   print("3- opção 3");

//   continuar = int.parse(stdin.readLineSync()!);

//  }while(continuar != 1 || continuar != 2);


//  List<String> itens = ["aaaaa"]; //

//   print("Digite um valor: ");
//  String? valor = stdin.readLineSync(); // a entrada pode ser nula

//  itens.add(valor!); //Precisa ter dados

  List<String> frutas = [];

  for(int i = 0; i < 3;i++){
    print("digite sua fruta preferida: ");
    String? fruta = stdin.readLineSync();
    frutas.add(fruta!);

  }
  for(String i in frutas){
    print("$i");
  }
  frutas.forEach((String i) {
     print(i);
  }); // faz açoes para cada item da lista
  print(frutas);

  List<int> numeros = [1,3,5];
  numeros.forEach((int i){
    i += 1;
    print(i);
  });

  print(numeros);
}