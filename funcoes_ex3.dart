import 'dart:io';

void main(){
  stdout.write("Digite a temperatura em Celsius: ");
  double temperatura = double.parse(stdin.readLineSync()!);

  double temp_convertida = celsiusParaFahrenheit(temperatura);

  print("A temperatura convertida para Fahrenheit é: $temp_convertida°");
}

double celsiusParaFahrenheit(double temperatura){
  double temp_fahrenheit = (temperatura * 9/5) + 32;
  return temp_fahrenheit;

}