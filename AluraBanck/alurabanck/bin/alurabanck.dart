import '../lib/contaCorrente.dart';
import '../lib/cliente.dart';
void main() {
  contaCorrente contaDaAmanda = contaCorrente();
  contaCorrente contaDoThiago = contaCorrente();

  cliente amanda = cliente();
  amanda.nome = 'Amanda';
  amanda.cpf = '123.456.789-00';
  amanda.profissao = 'Programadora Dart';

  contaDaAmanda.titula = amanda;

  print('Titulaar: ${contaDaAmanda.titula.nome}');
  print('CPF: ${contaDaAmanda.titula.cpf}');
  print('Profissão: ${contaDaAmanda.titula.profissao}');
}