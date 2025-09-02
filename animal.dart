import "dart:io";

void main(){

  Cachorro Toto = Cachorro(nome: "Toto", idade: 9, raca: "shitzu");
  Gato Hercules =Gato(nome: "Hércules", idade: 3, cor: "cinza");
  

  print("${Toto.nome}, ${Toto.idade}, ${Toto.raca}");
  Toto.fazerSom();
  print("${Hercules.nome}, ${Hercules.idade}, ${Hercules.cor}");
  Hercules.fazerSom();

}

class Animal{
  String nome;
  int idade;

  Animal({required this.nome, required this.idade});

}

class Cachorro extends Animal {
  String? raca;

  Cachorro({required String nome, required int idade, this.raca}):super(nome:nome, idade:idade);

  void fazerSom(){
    print("Au Au!!");
  }

}

class Gato extends Animal {
  String? cor;

  Gato({required String nome, required int idade, this.cor}):super(nome:nome, idade:idade);

  void fazerSom(){
    print("Miau!!");
  }

}