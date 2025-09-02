import 'dart:io';

class Carro{
  int rodas = 0;
  String cor = "";
  String placa = "";
  String marca = "";
  String modelo = "";
  int velocidade = 0;

  Carro(this.rodas, this.cor, this.marca, this.placa, this.modelo, this.velocidade);

  void acelerar(){
    velocidade += 10;
  }
  

}

void main(){
  Carro Mustang = Carro(4, "azul", "Ford", "gguigu66", "Mustang Manual", 170);
  Carro Ferrari = Carro(4, "vermelha", "Ferrari", "ART985", "458 La Ferrari", 0);
  print("Velocidade antes de acelerar: ${Mustang.velocidade}");
  print("Velocidade antes de acelerar: ${Ferrari.velocidade}");

  Mustang.acelerar();
  Ferrari.acelerar();

  print("Velocidade depois de acelerar: ${Mustang.velocidade}");
  print("Velocidade depois de acelerar: ${Ferrari.velocidade}");
}