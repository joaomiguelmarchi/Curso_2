void main(){
  Pessoa antonio = Pessoa(40, 2);
  Pessoa jao = Pessoa(88, 2);
  Pessoa carlos = Pessoa(0, 0.2);
  Pessoa primo = Pessoa(12, 1.9);
  print(antonio.idade);
  print(jao.idade);
  print(carlos.idade);
  print(primo.idade);
  jao.eAlto(jao.altura);
  Cachorro a = Cachorro(12, 1.1);
  print (a.altura);
}

class Pessoa{
  int idade;
  double altura;
  bool? isAlto;
  Pessoa(this.idade, this.altura, {this.isAlto});

  eAlto(double altura){
    isAlto= altura>=1.80;
    print("Sua altura é $altura. você é alto? $isAlto");
  }
}

class Cachorro extends Pessoa{
  bool? isFofo;
  Cachorro(int idade, double altura, {bool? isAlto,this.isFofo})
      : super(idade, altura);
}