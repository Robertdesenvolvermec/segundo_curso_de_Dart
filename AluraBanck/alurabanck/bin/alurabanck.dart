import '../lib/contaCorrente.dart';
import '../lib/cliente.dart';

void main() {
  contaCorrente contaDaAmanda = contaCorrente(1234, 12345678);
  contaCorrente contaDoThiago = contaCorrente(1234, 12345679);
  contaCorrente contaDoAlexandre = contaCorrente(1234, 12345670);
  contaCorrente contaDoBia = contaCorrente(1234, 1234567);

  print(contaCorrente.totalDeContasCorrentes);
}
