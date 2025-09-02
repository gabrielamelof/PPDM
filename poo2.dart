import "dart:io";

class Products{
  String name; //atributo obrigatório
  double price;
  String? description; //atributo opcional

  Products({ required this.name, required this.price, this.description}); //para colocar atributos aleatórios, use chaves e required nos atributos que são obrigatórios
}

void main(){
  Products Coca =Products(name: "Coca-Cola", price: 14);
  Products Pepsi =Products(name: "Pepsi", price: 12, description: "Pepsi gelada");
}