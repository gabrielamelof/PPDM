import 'dart:io';

void main(){

  Pix pix = Pix();
  CartaoCredito cartao = CartaoCredito();
  Boleto boleto = Boleto();
  
  print("1- Pix");
  print("2 - Cartão de Crédito");
  print("3 - Boleto");
  stdout.write("Escolha um método de pagamento:");
  int escolha = int.parse(stdin.readLineSync()!);

  switch(escolha){
    case 1:
      pix.Processar();
    
    case 2:
      cartao.Processar();
    
    case 3:
      boleto.Processar();
    
  }
 


}

class Pagamento{

  void Processar(){
    print("Processando o pagamento...");
  }
}

class Pix extends Pagamento{

  @override
  void Processar(){
    print("Gerando o seu qr code para pagamento....\nPaamento concluído com sucesso!");
  }
}

class CartaoCredito extends Pagamento{

  @override
  void Processar(){
    print("Processando o seu pagamento no cartão\nPaamento concluído com sucesso!");
  }
}

class Boleto extends Pagamento{

  @override
  void Processar(){
    print("Gerando o código do seu boleto....\nPaamento concluído com sucesso!");
  }
}