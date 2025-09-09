import 'dart:io';
import 'avaliacao2.dart';

void main(){
  List<Animal> animais = [];

  Menu(animais);

}

void listarAnimais(List<Animal> animais){
  print("Animais cadstrados no ZOOMANGE:");
  for(int i = 0; i <animais.length; i++){
    print("====================== Animal ${i}==============================");
    print("[$i] Nome: ${animais[i].nome}\nIdade: ${animais[i].mostrar_idade}");
    animais[i].mostrar_curiosidade();
    print("=======================================================================\n");
  }
}

void cadastrarAnimal(List<Animal> animais){
  stdout.write("Digite o nome do animal: ");
  String nome = stdin.readLineSync()!;

  stdout.write("Digite a idade do animal: ");
  int idade = int.parse(stdin.readLineSync()!);

  print("1- Pequeno\n2- Médio\n3- Grande");
  stdout.write("Digite o porte do animal: ");
  int porte = int.parse(stdin.readLineSync()!);

  Animal animalzinho;
  switch(porte){
    case 1:
      animalzinho = Pequeno(nome: nome);
      break;
    case 2:
      animalzinho = Medio(nome: nome);
      break;
    case 3:
      animalzinho = Grande(nome: nome);
      break;
    default:
      print("O dado inserido é inválido. Por padrão, o animal foi cadastrado como pequeno porte.");
      animalzinho = Pequeno(nome: nome);
  }

  animalzinho.alterar_idade = idade;
  animais.add(animalzinho);
  print("Cadastro de animal concluído com sucesso!");
}

void listarNomes(List<Animal> animais){
  for(int i = 0; i <animais.length; i++){
    print("[$i] Nome: ${animais[i].nome}\n");
  }
}
void editarAnimal(List<Animal> animais){
  listarNomes(animais);
  stdout.write("Digite o número do animal que deseja editar: ");
  int animal = int.parse(stdin.readLineSync()!);

  print("================ Edição das informações do animal ===============");

  stdout.write("Digite o nome do animal: ");
  animais[animal].nome = stdin.readLineSync()!;

  stdout.write("Digite a idade do animal: ");
  animais[animal].alterar_idade = int.parse(stdin.readLineSync()!);

  print("Os dados do animal foram editados com sucesso!");
}

void removerAnimal(List<Animal> animais){
  listarNomes(animais);

  stdout.write("Digite o número do animal que deseja remover: ");
  int animal = int.parse(stdin.readLineSync()!);

  animais.removeAt(animal);
  print("Animal removido do ZOOMANGE com sucesso!");

}

void filtroPorte(List<Animal> animais){
  stdout.write("1- Pequeno\n2- Médio\n3- Grande\nEscolha o porte: ");
  int escolha = int.parse(stdin.readLineSync()!);


  switch(escolha){
    case 1:
      for (var animal in animais){
        if (animal is Pequeno){
          print("====================");
          print("Nome do animal: ${animal.nome}");
          print("Idade do animal: ${animal.mostrar_idade}");
          animal.mostrar_curiosidade();
          print("===============================");
        }
      }
      break;

     case 2:
      for (var animal in animais){
        if (animal is Medio){
          print("====================");
          print("Nome do animal: ${animal.nome}");
          print("Idade do animal: ${animal.mostrar_idade}");
          animal.mostrar_curiosidade();
          print("===============================");
        }
      }
      break;
    case 3:
      for (var animal in animais){
        if (animal is Grande){
          print("====================");
          print("Nome do animal: ${animal.nome}");
          print("Idade do animal: ${animal.mostrar_idade}");
          animal.mostrar_curiosidade();
          print("===============================");
        }
      }
      break;
      default:
        print("Essa opção não é válida.");
  }

}

void Menu(List<Animal> animais){
  int escolha = 1;
  do{
    print("=============== Bem vindo ao ZOOMANGE!!!! ================");
    print("Escolha uma das opções para continuar:");
    print("1- Cadastrar um novo animal;\n2- Listar todos os animais cadastrados\n3- Editar dados de um animal\n4- Remover um animal;\n5-Filtrar por porte;\n0- Sair.");
    stdout.write("Digite a sua escolha:");
    int escolha = int.parse(stdin.readLineSync()!);

    switch(escolha){
      case 1:
        cadastrarAnimal(animais);
        break;
      case 2: 
        listarAnimais(animais);
        break;
      case 3:
        editarAnimal(animais);
        break;
      case 4:
        removerAnimal(animais);
        break;
      case 5:
        filtroPorte(animais);
        break;
      case 0:
        print("Obrigado por utilizar o sistema do ZOOMANGE");
        print("Saindo...");
      default:
        print("Opção inválida!"); 
    }
  }while(escolha != 0);
  
}
