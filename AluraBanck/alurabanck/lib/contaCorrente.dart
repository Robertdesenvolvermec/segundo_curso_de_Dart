import 'cliente.dart';

class contaCorrente {
  cliente titula;
  int _agencia = 145;

  get agencia => _agencia;

  set agencia(int novaAgencia) {
    _agencia = novaAgencia;
  }

  int conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  get saldoObtem {
    return saldo;
  }

  set saldoDefine(double novoSaldo) {
    if (novoSaldo >= chequeEspecial) {
      saldo = novoSaldo;
    } else {
      print('ERRO! Está adicionando um saldo menor que o cheque especial');
    }
  }

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
