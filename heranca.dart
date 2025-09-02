import 'dart:io';

class Veiculo{
  String modelo;
  String marca;
  int ano;

  Veiculo({required this.modelo, required this.marca, required this.ano});

}

class Carro extends Veiculo{
  int? qt_portas;
  Carro({required String modelo, required String marca, required int ano, this.qt_portas}):super(modelo:modelo, marca: marca, ano: ano);
}

class Moto extends Veiculo{
  bool? bau;

  Moto({required String modelo, required String marca, required int ano, this.bau}):super(modelo:modelo, marca: marca, ano: ano);
}

void main(){
  Carro Uno = Carro(modelo:"uno", marca: "ford", ano:2020);
  Carro Corola = Carro(modelo:"corola", marca: "vw", ano:2020, qt_portas:4);

  Moto MotoFran = Moto(modelo: "Twiater", marca: "Honda", ano: 2018);
  Moto MotoLu = Moto(modelo: "Twiater", marca: "Honda", ano: 2020, bau: true);
}
