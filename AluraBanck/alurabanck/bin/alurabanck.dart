void main() {
  contaCorrente contaDaAmanda = contaCorrente();
  contaCorrente contaDoThiago = contaCorrente();
  contaDaAmanda.titula = 'Amanda';
  contaDoThiago.titula = 'Thiago';

  print('Saldo da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  contaDaAmanda.saque(121.0);
  print('Saldo atual da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  print('');

  print('Saldo da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');
  contaDoThiago.saque(121.0);
  print('Saldo atual da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');
}

class contaCorrente {
  String titula;
  int agencia = 145;
  int conta;
  double saldo = 20.0;

  void saque(double valorDoSaque) {
    double limiteDeSaque = (saldo + 100) - valorDoSaque;

    if (this.saldo - valorDoSaque < -100) {
      print('Sem saldo suficiente');
      print(
          'Tendando sacar $valorDoSaque; limite de saque ${limiteDeSaque} reais');
    } else {
      print('Sacando $valorDoSaque reais');
      this.saldo -= valorDoSaque;
    }
  }
}
