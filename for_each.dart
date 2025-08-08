import 'dart:io';

void main(){

  List<String> nomes = ["Gabriela", "Gabi", "Gabs"];
  List<String> alunos_presentes = [];
  int presentes = 0;

  nomes.forEach((String i) {
     print("A pessoa $i está presente?");
     stdout.write("1- Sim \n2- Não");
     int presenca = int.parse(stdin.readLineSync()!);

     if (presenca == 1){
        presentes++;
        alunos_presentes.add(i);
     }
  }); 

  print("$presentes estão presentes");
  print("Alunos presentes: $alunos_presentes");
}