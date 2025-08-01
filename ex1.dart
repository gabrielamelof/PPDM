import 'dart:io';

void main(){
  int nota1 = 2;
  int nota2 = 3;
  int nota3 = 10;
  int nota4 = 0;
  int nota5 = 3;

  double media = (nota1 + nota2 + nota3 + nota4 + nota5)/5;

  if (media >= 5){
    print("Sua nota é: $media");
    print("Você foi aprovado!");
  }
  else if (media < 4){
     print("Sua nota é: $media");
     print("Você está de reprovado!");
  }
  else{
    print("Sua nota é: $media");
    print("Você foi recuperação!");
  }
  
  
}