import 'dart:io';

void main(){
  somente_mostra();
  soma(10,20);
  int valordafuncao =somar();
  int valo_final = valordafuncao * 2;
  print("valor final: $valo_final");


  int valordafuncao2 =somar2(30,50);
  int valor_final2 = valordafuncao * 2;
  print("valor final: $valor_final2");



}

void somente_mostra(){  //uso quando só quero mostrar algo
  print("Bem vindo ao restaurante");
  print("Escolha uma das opções:");
  print("1- Lasanha");
  print("2- Churrasco");
  print("3- Risoto");
  print("4- Feijoada");
}

void soma(int num1, int num2){ //com parâmetro sem retorno. Uso quando preciso de uma informação do código e não mnipulo o resultado dela
  int valor = num1 + num2;
  print("$valor");
}

int somar(){ //Quando não pego dados de fora, mas preciso modificar o resultado depois
  int valor = 1 + 2;
  return valor;
}

int somar2(int num1, int num2){ //Quando preciso de informações de fora e também preciso modificá-la depois. 
  int valor = num1 + num2;
  return valor;
}