import 'dart:io';
import 'dart:math';
import 'dart:vmservice_io';

void main(){
   Circulo circulo = Circulo(raio: 5);
   Quadrado quadrado = Quadrado(lado: 8);
   Retangulo retangulo = Retangulo(base: 5, altura: 2);

   List <Forma> Formas = [circulo, quadrado, retangulo];

   for (var forma in Formas) {
    forma.calcularArea();
  }
}

class Forma{

  void calcularArea(){
    print("Calculando a área");
  }
}

class Circulo extends Forma{
   double raio;

   Circulo({required this.raio});

  @override
  void calcularArea(){
    double area = 3.14 * pow(raio, 2);
    print("Área do círculo: ${area}");
  }
}

class Quadrado extends Forma{
   double lado;

   Quadrado({required this.lado});

  @override
  void calcularArea(){
    double area = lado * lado;
    print("Área do quadrado: ${area}");
  }
}

class Retangulo extends Forma{
   double base;
   double altura;

   Retangulo({required this.base,  required this.altura});

  @override
  void calcularArea(){
    double area = base * altura;
    print("Área do retângulo: ${area}");
  }
}

