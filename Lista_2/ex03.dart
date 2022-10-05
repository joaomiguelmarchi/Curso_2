import 'package:intl/intl.dart';

void main() {
  final biblioteca = Biblioteca();
  biblioteca.mostraMusicas();
  biblioteca.transformaEmHoras(biblioteca.somaSegundos());
}

class Musica {
  Musica(this.nomeMusica,this.nomeArtista,this.nomeAlbum, this.duracaoSeg);

  final String nomeMusica;
  final String nomeArtista;
  final String nomeAlbum;
  final int duracaoSeg;
}

class Biblioteca {
  final _bibliotecaMusicas = <Musica> [
    Musica("Jesus Chorou", "Racionais MC", "Nada Como Um Dia Após O Outro Dia", 472),
    Musica("No Brooklin", "Sabotage", "Rap É Compromisso", 348),
    Musica("Cantando Pro Santo", "Sabotage", "Rap É Compromisso", 366),
    Musica("My Name Is", "Eminem", "The Real Slim Shady", 249),
    Musica("Capitulo 4, Versículo 3", "Racionais MC", "Sobrevivendo No Inferno", 489),
    Musica("Um Bom Lugar", "Sabotage", "Rap É Compromisso", 305),
    Musica("Tudo Que Ela Gosta De Escutar", "Charlie Brown Junior", "Transpiração Contínua Prolongada", 176),
    Musica("Juicy", "The Notorious B.I.G", "Greatest Hits", 285),
    Musica("Forgot About Dre", "Dr. Dre", "2001", 222),
    Musica("A Carta", "Exaltasamba", "Valeu Exalta!", 279),
    Musica("You Give Love A Bad Name", "Bon Jovi", "Slippery When Wet", 222),
    Musica("Meu Erro", "Paralamas Do Sucesso", "O Passo Do Lui", 208),
    Musica("She's A Lover", "Red Hot Chili Peppers", "Unlimited Love", 221),
    Musica("Fuel", "Metallica", "Reload", 269)
  ];

  /// Mostra todas as músicas disponíveis na biblioteca
  void mostraMusicas(){
    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      print("Música: ${_bibliotecaMusicas[i].nomeMusica}\nArtista: ${_bibliotecaMusicas[i].nomeArtista}\nÁlbum: ${_bibliotecaMusicas[i].nomeAlbum}\nDuração (segundos): ${_bibliotecaMusicas[i].duracaoSeg}");
      print("-----------------------------------------------");
    }
  }

  /// Pega e retorna número total de segundos da bilbioteca
  int somaSegundos() {
    int totalDeSegundos = 0;

    for (var i = 0; i < _bibliotecaMusicas.length; i++) {
      totalDeSegundos += _bibliotecaMusicas[i].duracaoSeg;
    }
    return totalDeSegundos;
  }

  /// Transforma o total de segundos em horas
  void transformaEmHoras(int segundos) {

    /// Classe importada que formata horas, minutos e segundos
    NumberFormat formatador = NumberFormat("00");
    int hor = segundos ~/ 60;
    int min = hor % 60;
    int seg = segundos % 60;
    hor = hor ~/ 60;
    var hora = "";
    var minuto = "";
    var segundo = "";

    switch (hor) {
      case 0:
        hora = "hora";
        break;
      case 1:
        hora = "hora";
        break;
      default:
        hora = "horas";
        break;
    }

    switch (min) {
      case 0:
        minuto = "minuto";
        break;
      case 1:
        minuto = "minuto";
        break;
      default:
        minuto = "minutos";
        break;
    }

    switch (seg) {
      case 0:
        segundo = "segundo";
        break;
      case 1:
        segundo = "segundo";
        break;
      default:
        segundo = "segundos";
        break;
    }

    print("Duração total da biblioteca: ${formatador.format(hor)} $hora ${formatador.format(min)} $minuto ${formatador.format(seg)} $segundo");
  }
}