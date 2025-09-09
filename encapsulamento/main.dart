import 'dart:io';
import 'encapsulamento.dart';

void main(){
  Carro uptesla = Carro(modelo: "modelo");
  uptesla.alterar_velocidade = 20;
  print(uptesla.mostrar_velocidade);
}
