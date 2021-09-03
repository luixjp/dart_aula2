import 'dart:io';

void main(List<String> arguments) {
  var nomes = ['Luis', 'Felipe', 'Maria', 'Karla'];
  nomes.add('Pedro');
  nomes.removeAt(1);

  var repetir = true;
  do {
    imprimirMeuNome();
    imprimirNomes(nomes);
    print(getLastNome(nomes));
    print(getNomesPosicaoPar(nomes));

    print('Deseja repetir?');
    print('Digite \'SIM\' para repetir ou qualquer outra coisa para não!');
    var line = stdin.readLineSync();
    line = line!.toUpperCase();

    repetir = (line == 'SIM' ? true : false);
  } while (repetir);

  finalizar(() {
    print('Programa Finalizado!');
  });
}

void imprimirMeuNome() {
  print('Imprimindo meu Nome!');
  print('Luis Nakamura');
}

void imprimirNomes(List<String> nomes) {
  print('Imprimindo Todos os Nomes!');
  print(nomes);
}

String getLastNome(List<String> nomes) {
  print('Imprimindo último Nome!');
  return nomes.last;
}

String getNomesPosicaoPar(List<String> nomes) {
  var qtdNomes = nomes.length;

  print('Imprimindo na ordem!');
  for (var posicao = 0; posicao < qtdNomes; posicao++) {
    print(nomes[posicao]);
  }

  print('Imprimindo na ordem contrária!');
  while (qtdNomes > 0) {
    print(nomes[qtdNomes - 1]);
    qtdNomes--;
  }

  var contador = 0;
  var pares = '';
  print('Imprimindo indexes pares!');
  for (var nome in nomes) {
    if (contador % 2 == 0) {
      pares += ' $nome';
    }
    contador++;
  }

  return pares;
}

void finalizar(Function func) {
  func();
  print('GAME OVER');
}
