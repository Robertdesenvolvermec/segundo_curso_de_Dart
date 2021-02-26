import '../lib/contaCorrente.dart';
import '../lib/cliente.dart';

void main() {
  contaCorrente contaDaAmanda = contaCorrente();
  contaCorrente contaDoThiago = contaCorrente();

  contaDaAmanda.agencia = 12345;
  print(contaDaAmanda.agencia);
}
