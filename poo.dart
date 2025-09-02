import 'dart:io';
import 'classe_cachorro.dart';

void main (){

  // Humano Gabriela = Humano();
  // Gabriela.cor_olho = "Castanho escuro";
  // Gabriela.nome = "Gabiela de Melo Freitas";
  // Gabriela.idade = 19;
  // Gabriela.cabelo = "Ondulado";
  // print("${Gabriela.cor_olho}, ${Gabriela.nome}, ${Gabriela.idade}, ${Gabriela.cabelo} ");

  // Humano Leticia = Humano();
  // Leticia.cor_olho = "Castanho escuro";
  // Leticia.nome = "letícia LTC";
  // Leticia.idade = 19;
  // Leticia.cabelo = "Cacheado";
  // print("${Leticia.cor_olho}, ${Leticia.nome}, ${Leticia.idade}, ${Leticia.cabelo} ");

  // Humano Fran = Humano();
  // Fran.cor_olho = "Castanho escuro";
  // Fran.nome = "francesca";
  // Fran.idade = 19;
  // Fran.cabelo = "Cacheado";
  // print("${Fran.cor_olho}, ${Fran.nome}, ${Fran.idade}, ${Fran.cabelo} ");
  Humano Gabiela = Humano("castanho", "Gabi", 19, "ondulado");
  Humano Leticia = Humano("castanho", "Leticia", 19, "cacheado");
  Humano Fran = Humano("castanho", "Fran", 19, "cacheado");

  Cachorro Toto = Cachorro("Totó de Melo Freitas");
}

class Humano{
  String cor_olho = "";
  String nome = "";
  int idade = 0;
  String cabelo = "";
  Humano(this.cor_olho, this.nome, this.idade, this.cabelo);
}