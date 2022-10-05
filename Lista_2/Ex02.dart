import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final randomFornecedor = Random().nextInt(6);
  final fornecedorBebidas = FornecedorDeBebidas();
  final fornecedorSanduiches = FornecedorDeSanduiches();
  final fornecedorBolos = FornecedorDeBolos();
  final fornecedorSaladas = FornecedorDeSaladas();
  final fornecedorPetiscos = FornecedorDePetiscos();
  final fornecedorUltras = FornecedorDeUltras();

  if (randomFornecedor == 0) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoBebidas(fornecedorBebidas);
    }
  } else if (randomFornecedor == 1) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoSanduiches(fornecedorSanduiches);
    }
  } else if (randomFornecedor == 2) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoBolos(fornecedorBolos);
    }
  } else if (randomFornecedor == 3) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoSaladas(fornecedorSaladas);
    }
  } else if (randomFornecedor == 4) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoPetiscos(fornecedorPetiscos);
    }
  } else if (randomFornecedor == 5) {
    for (var i = 0; i < 5; i++) {
      pessoa.refeicaoUltras(fornecedorUltras);
    }
  }

  pessoa.mostrarCaloriasIniciais();

  pessoa.informacoes();

  pessoa.totalCalorias();

  pessoa.mostrarStatus();

  pessoa.precisaRefeicoes();

  pessoa.numeroDeRefeicoes();

}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

class FornecedorDeBebidas {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Café', 60),
    Produto('Cha', 35)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerBebidas() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches {
  final _random = Random();
  final _sanduichesDisponiveis = <Produto>[
    Produto('Sanduiche de presunto', 200),
    Produto('Sanduiche integral', 100),
    Produto('Sanduiche de mostarda', 130),
    Produto('Sanduiche de carne', 200),
    Produto('Sanduiche de peito de peru', 180),
    Produto('Sanduiche de mortadela', 200)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerSanduiches() {
    return _sanduichesDisponiveis[_random.nextInt(_sanduichesDisponiveis.length)];
  }
}

class FornecedorDeBolos {
  final _random = Random();
  final _bolosDisponiveis = <Produto>[
    Produto('Bolo de morango', 130),
    Produto('Bolo de chocolate', 230),
    Produto('Bolo de nozes', 100),
    Produto('Bolo de Nutella', 140),
    Produto('Bolo de cenoura', 340),
    Produto('Bolo de fubá', 100)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerBolos() {
    return _bolosDisponiveis[_random.nextInt(_bolosDisponiveis.length)];
  }
}

class FornecedorDeSaladas {
  final _random = Random();
  final _saladasDisponiveis = <Produto>[
    Produto('Salada de alface', 14),
    Produto('Salada de tomate', 40),
    Produto('Salada de agrião', 30),
    Produto('Salada de batata', 80),
    Produto('Salada de cebola', 35),
    Produto('Salada de abóbora', 40)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerSaladas() {
    return _saladasDisponiveis[_random.nextInt(_saladasDisponiveis.length)];
  }
}

class FornecedorDePetiscos {
  final _random = Random();
  final _petiscosDisponiveis = <Produto>[
    Produto('Amendoim', 100),
    Produto('Castanha', 80),
    Produto('Pipoca', 40),
    Produto('Peixe frito', 100),
    Produto('Ovo de codorna', 80),
    Produto('Azeitona', 40)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerPetiscos() {
    return _petiscosDisponiveis[_random.nextInt(_petiscosDisponiveis.length)];
  }
}

class FornecedorDeUltras {
  final _random = Random();
  final _ultrasDisponiveis = <Produto>[
    Produto('Bacon', 400),
    Produto('Chocolate', 300),
    Produto('Hamburguer', 500),
    Produto('Batata frita', 300),
    Produto('Pizza', 400),
    Produto('Pastel', 500)
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecerUltras() {
    return _ultrasDisponiveis[_random.nextInt(_ultrasDisponiveis.length)];
  }
}

class Pessoa {

  late Status status;

  int numeroRefeicoes = 0;

  // Acumulador de calorias

  int _caloriasConsumidas = 0;

  // Gera calorias iniciais aleatorimente
  final int _caloriasInicial = Random().nextInt(1000);

  int getTotalCalorias() {
    int totalDeCalorias = _caloriasConsumidas + _caloriasInicial;
    return totalDeCalorias;
  }

  //
  void totalCalorias() {
    print("Total de calorias da pessoa após refeição: ${_caloriasConsumidas + _caloriasInicial}");
  }

  /// Imprime as informações desse consumidor
  void informacoes() {
    print('Calorias consumidas: $_caloriasConsumidas');
  }

  void mostrarCaloriasIniciais() {
    print("Calorias iniciais: $_caloriasInicial");
  }

  /// Consome uma bebida e aumenta o numero de calorias
  void refeicaoBebidas(FornecedorDeBebidas fornecedorBebidas) {
    final produto = fornecedorBebidas.fornecerBebidas();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /// Consome um sanduiche e aumenta o numero de calorias
  void refeicaoSanduiches(FornecedorDeSanduiches fornecedorSanduiches) {
    final produto = fornecedorSanduiches.fornecerSanduiches();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /// Consome um bolo e aumenta o numero de calorias
  void refeicaoBolos(FornecedorDeBolos fornecedorBolos) {
    final produto = fornecedorBolos.fornecerBolos();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /// Consome uma salada e aumenta o numero de calorias
  void refeicaoSaladas(FornecedorDeSaladas fornecedorSaladas) {
    final produto = fornecedorSaladas.fornecerSaladas();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /// Consome um petisco e aumenta o numero de calorias
  void refeicaoPetiscos(FornecedorDePetiscos fornecedorPetiscos) {
    final produto = fornecedorPetiscos.fornecerPetiscos();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  /// Consome um ultra calorico e aumenta o numero de calorias
  void refeicaoUltras(FornecedorDeUltras fornecedorUltras) {
    final produto = fornecedorUltras.fornecerUltras();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');

    _caloriasConsumidas += produto.calorias;

    if (getTotalCalorias() <= 500) {
      status = Status.deficitExtremo;
    } else if (getTotalCalorias() > 500 && getTotalCalorias() <= 1800) {
      status = Status.deficit;
    } else if (getTotalCalorias() > 1800 && getTotalCalorias() <= 2500) {
      status = Status.satisfeito;
    } else if (getTotalCalorias() > 2500) {
      status = Status.excesso;
    }
  }

  void mostrarStatus() {
    switch (status){
      case Status.deficitExtremo:
        print("Status: Deficit extremo de calorias");
        break;
      case Status.deficit:
        print("Status: Deficit de calorias");
        break;
      case Status.satisfeito:
        print("Status: Pessoa satisfeita");
        break;
      case Status.excesso:
        print("Status: Excesso de calorias");
    }
  }

  void precisaRefeicoes() {
    switch (status){
      case Status.deficitExtremo:
        print("Precisa de mais refeições");
        numeroRefeicoes++;
        break;
      case Status.deficit:
        print("Precisa de mais refeições");
        numeroRefeicoes++;
        break;
      case Status.satisfeito:
        print("Não precisa de mais refeições");
        numeroRefeicoes++;
        break;
      case Status.excesso:
        print("Não precisa de mais refeições");
        numeroRefeicoes++;
    }
  }

  void numeroDeRefeicoes() => print("Numero de refeições: $numeroRefeicoes");

}

enum Status {
  deficitExtremo,
  deficit,
  satisfeito,
  excesso,
}