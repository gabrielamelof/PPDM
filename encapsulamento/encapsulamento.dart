import 'dart:io';

class Carro{
  String modelo;
  int _velocidade = 0; //item privado

  Carro({required this.modelo});

  //função get -> para pegar o valor do atributo privado
  int get mostrar_velocidade{
    return _velocidade;
  }

  //função set -> para alterar o valor com validação
  set alterar_velocidade (int v){
    //faço uma verificação para saber se eh valido
    if (v < 0){
      print("velocidade não pode ser inferior a 0");
    } else{
      _velocidade = v;
    }
  }

}
