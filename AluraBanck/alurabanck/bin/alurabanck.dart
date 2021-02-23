void main() {
  contaCorrente conta = contaCorrente();
  conta.titula = 'Robert';
  conta.agencia = 123;
  conta.conta = 1234;
  
  conta.saldo = 0.0;
  
  print(conta.saldo);

  conta.saldo = 150.0;

  print(conta.saldo);
  
  conta.saldo += 50.0;

  print(conta.saldo);
}

class contaCorrente {
  String titula;
  int agencia;
  int conta;
  double saldo;
}
