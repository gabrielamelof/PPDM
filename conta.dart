import 'dart:io';

void main(){
  ContaCorrente Conta1 =ContaCorrente(nome_titular: "Leticia", saldo_inicial: 10000, investimento: 500, limite_cheque: 200);
  print("${Conta1.nome_titular}, ${Conta1.saldo_inicial}, ${Conta1.investimento}, ${Conta1.limite_cheque}");

  ContaPoupanca Conta2 = ContaPoupanca(nome_titular: "Gabriela", saldo_inicial: 50000, taxa_rendimento: 10, investimento: 50);
  print("${Conta2.nome_titular}, ${Conta2.saldo_inicial}, ${Conta2.investimento}, ${Conta2.taxa_rendimento}");
  Conta2.Saldo();



}

class Conta{
  String nome_titular;
  double saldo_inicial;
  double? investimento;

  Conta({required this.nome_titular, required this.saldo_inicial, this.investimento});
}

class ContaCorrente extends Conta{
  double? limite_cheque;

  ContaCorrente({required String nome_titular, required double saldo_inicial, double? investimento, this.limite_cheque}):super(nome_titular: nome_titular, saldo_inicial: saldo_inicial, investimento: investimento);
}

class ContaPoupanca extends Conta{
  double taxa_rendimento;

  ContaPoupanca({required String nome_titular, required double saldo_inicial, double? investimento, required this.taxa_rendimento}):super(nome_titular: nome_titular, saldo_inicial: saldo_inicial, investimento: investimento);

  void Saldo(){
    double rendimento = saldo_inicial * taxa_rendimento;
    saldo_inicial += rendimento;
    print("Saldo com a taxa de rendimento: ${saldo_inicial}");
  }

}