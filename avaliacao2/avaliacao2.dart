import 'dart:io';

class Animal{
  String nome;
  int _idade = 0; 

  Animal({required this.nome});

  int get mostrar_idade{
    return _idade;
  }

  set alterar_idade(int idade){
    if(idade < 0){
      print("A idade não pode ser menor do que 0.");
    }else{
      _idade = idade;
    }
  }

  void mostrar_curiosidade(){
    print("Curiosidades");
  }

}

class Pequeno extends Animal{
  Pequeno({required String nome}):super(nome: nome);

  @override
  void mostrar_curiosidade(){
    print("Animais de pequeno porte geralmente têm o metabolismo muito mais acelerado do que os de grande porte. Isso significa que eles precisam comer com mais frequência e em proporção maior ao tamanho do corpo.");
  }

}

class Medio extends Animal{
  Medio({required String nome}):super(nome: nome);

  @override
  void mostrar_curiosidade(){
    print("animais de porte médio costumam ter um equilíbrio metabólico: não são tão acelerados quanto os pequenos, mas também não são tão lentos quanto os grandes. Isso os torna muito adaptáveis a diferentes ambientes.");
  }

}

class Grande extends Animal{
  Grande({required String nome}):super(nome: nome);

  @override
  void mostrar_curiosidade(){
    print("Uma curiosidade sobre o porte grande é que esses animais tendem a ter metabolismo mais lento e, por isso, vivem muito mais tempo do que os de médio e pequeno porte.");
  }

}