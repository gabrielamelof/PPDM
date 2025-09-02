import 'dart:io';

class Veiculo{
  String modelo;
  String cor;
  String marca;

  Veiculo({required this.modelo, required this.cor, required this.marca});

  void mover (bool cnh) {
    if (cnh) {
      print("Movendo veículo");
    } else {
      print("Você não tem CNH");
    }
  }
}

class Carro extends Veiculo{
  Carro ({required String modelo, required String cor, required String marca}):super(modelo: modelo, cor: cor, marca: marca);

  @override
  void mover (bool cnh) {
    if (cnh) {
      print("Virando a chave");
      print("Engatar a marcha");
      print("Soltar o pé da embreagem");
      print("Acelerar");
    } else {
      print("Você não tem CNH");
    }
  }

}

class Moto extends Veiculo{
  Moto ({required String modelo, required String cor, required String marca}):super(modelo: modelo, cor: cor, marca: marca);

  @override
  void mover (bool cnh) {
    if (cnh) {
      print("Virando a chave");
      print("Coloca no neutro");
      print("Coloca na primeira");
      print("Acelerar");
    } else {
      print("Você não tem CNH");
    }
  }

  String toString(){
    return "$modelo, $cor, $marca";
  }

}

void main(){
  Carro Bugatti = Carro(modelo: "Veyron", cor: "vermelho", marca: "Bulgatti");
  Bugatti.mover(true);

  print(Bugatti);

  Moto Moto1 = Moto(modelo: "modelo", cor: "vermelho", marca: "moto");
  Moto1.mover(true);
}