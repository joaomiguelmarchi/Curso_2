import 'dart:io';
// NÃO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

// -------------------------------------------------------------
// ADICIONAR IMPLEMENTAÇÃO RESTANTE ABAIXO DESSA LINHA
// -------------------------------------------------------------

class Telefone extends MeioDeComunicacao{
 printar(String tel){
   stdout.write("[TELEFONE] ");
}
}
class Celular extends MeioDeComunicacao{
 printar(){
   stdout.write("[CELULAR] ");
 }
}
class Orelhao extends MeioDeComunicacao{
  printar(){
    stdout.write("[ORELHAO] ");
}
}
class MeioDeComunicacao{
  fazerLigacao(String tel){
    String random = aleatorio().toString();
    int compare = 0;

    if  (compare == random.compareTo("Instance of 'Telefone'")){
      Telefone().printar(tel);
    }
    if (compare == random.compareTo("Instance of 'Celular'")) {
      Celular().printar();
    }
    if (compare == random.compareTo("Instance of 'Orelhao'")) {
      Orelhao().printar();
    }

    stdout.write("Ligando para $tel ");
    }
  }
