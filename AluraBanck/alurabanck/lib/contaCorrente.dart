import 'cliente.dart';

class contaCorrente {
  cliente titula;
  int agencia = 145;
  int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificaSaldo(double valor) {
    if (this.saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente');
      return false;
    } else {
      print('Movimentando $valor reais');
      return true;
    }
  }

  bool transferencia(double valorDaTransferencia, contaCorrente contaDestino) {
    if (!verificaSaldo(valorDaTransferencia)) {
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

  double deposito(double valorDoDeposito) {
    this.saldo += valorDoDeposito;
    return this.saldo;
  }
}