main() {
  Beber bebida1 = Beber(Bebidas.agua);
 // print(bebida1.funcEscolha(bebida1.escolha));
  print(bebida1.consultarTotalBebidas);
  bebida1.mudarTotalBebidas=10;
  print(bebida1.consultarTotalBebidas);
}

class Beber{

  Beber(this.escolha);
  dynamic escolha;
  int _totalBebidas= 0;
  //Map<String, dynamic> quantidadeML = {};

 funcEscolha(escolha) {
   switch (escolha){
     case Bebidas.agua:
       print("vou beber agua");
       break;
     case Bebidas.refri:
       print("vou beber Refri");
       break;
     case Bebidas.cerveja:
       print("vou beber cerveja");
       break;
     case Bebidas.cha:
       print("vou beber cha");
       break;
     case Bebidas.cafe:
       print("vou beber cafe");
       break;
     default:
       print("n vou beber nada");
       break;
   }
}

  //void adicionarRecipientes(String nome, dynamic ml){
    // quantidadeML[nome] = ml;
  //}
  int get consultarTotalBebidas{
      return _totalBebidas;
  }
  void set mudarTotalBebidas(int nQ){
      _totalBebidas = nQ;
  }
}

enum Bebidas{
  refri,
  agua,
  cha,
  cafe,
  cerveja,
  nada,
}