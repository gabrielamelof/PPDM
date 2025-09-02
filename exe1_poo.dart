import 'dart:io';


class Produto{
  String nome = "";
  double preco = 0;
  int quantidade = 0;

  Produto(this.nome, this.preco, this.quantidade);

  void subtrair_estoque(){
    if (quantidade > 0){
      quantidade -= 1;
    }
    else{
      print("Estoque esgotado para o produto ${nome}");
    }
  }
}
void main(){

  Produto Produto1 = Produto("Livro", 50.6, 3);

  Produto1.subtrair_estoque();
  print("Quantidade disponível no estoque: ${Produto1.quantidade}");

  Produto1.subtrair_estoque();
  print("Quantidade disponível no estoque: ${Produto1.quantidade}");

  Produto1.subtrair_estoque();
  print("Quantidade disponível no estoque: ${Produto1.quantidade}");

  Produto1.subtrair_estoque();
  print("Quantidade disponível no estoque: ${Produto1.quantidade}");

}

