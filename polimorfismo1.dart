import 'dart:io';

void main(){

  Cachorro Toto = Cachorro(nome: "toto");

  Gato Gatinho = Gato(nome: "Gatinho");

  Papagaio Piupiu = Papagaio(nome: "piupiu");

  List<String> Animais = ["tot"];


}

class Animal{
  String nome;

  Animal({required this.nome});

  void falar(){
    print("Fala do animal");
  }
}

class Cachorro extends Animal {
  Cachorro({required String nome}):super(nome: nome);

  void falar(){
    print("AU AU!");
  }
}

class Gato extends Animal {
  Gato({required String nome}):super(nome: nome);

  void falar(){
    print("Miau!");
  }
}

class Papagaio extends Animal {
  Papagaio({required String nome}):super(nome: nome);

  void falar(){
    print("Piu Piu!");
  }
}