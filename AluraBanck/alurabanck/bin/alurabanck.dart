void main() {
  contaCorrente contaDaAmanda = contaCorrente();
  contaCorrente contaDoThiago = contaCorrente();
  contaDaAmanda.titula = 'Amanda';
  contaDaAmanda.chequeEspecial = -110.0;
  contaDoThiago.titula = 'Thiago';

  //contaDaAmanda.deposito(20.0);
  //print('Saldo da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  //contaDaAmanda.saque(80.0);
  //print('Saldo atual da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  //print('');

  //contaDoThiago.deposito(50.0);
  //print('Saldo da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');
  //contaDoThiago.saque(130.0);
  //print('Saldo atual da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');

  print('Saldo atual da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  print('Saldo atual da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');
  print('');
  bool sucesso = contaDaAmanda.transferencia(130.0, contaDoThiago);
  print(sucesso);
  print('');
  print('Saldo atual da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');
  print('Saldo atual da ${contaDoThiago.titula}: ${contaDoThiago.saldo}');
  print('');

  contaDaAmanda.deposito(300.0);
  print('Saldo atual da ${contaDaAmanda.titula}: ${contaDaAmanda.saldo}');

}

class contaCorrente {
  String titula;
  int agencia = 145;
  int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificaSaldo(double valor){
    if (this.saldo - valor < chequeEspecial){
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }

  bool transferencia(double valorDaTransferencia, contaCorrente contaDestino){
    if (!verificaSaldo(valorDaTransferencia)){
      return false;
    } else {
      this.saldo -= valorDaTransferencia;
      contaDestino.deposito(valorDaTransferencia); 
      return true;
    }
  }

  bool saque(double valorDoSaque) {

    if (!verificaSaldo(valorDoSaque)) {
      return false;
    } else {
      this.saldo -= valorDoSaque;
      return true;
    }
  }

  double deposito(double valorDoDeposito){
    print('Foi feito um deposito na conta');
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}