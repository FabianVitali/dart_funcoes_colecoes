void main() {
  // var lista = ['Fabian'];
  // print(lista.hashCode);
  // print(lista);
  // funcao(lista);
  // print(lista);

  // var nome = 'Fabian Vitali';
  // print(nome);
  // print(nome.hashCode);
  // funcao2(nome);
  // print(nome);
  // print(nome.hashCode);

  var list = ['Fabian'];
  print(list);
  add(list);
  print(list);
}

void funcao2(String nome) {
  nome += ' Aacademia do Flutter';
  print(nome);
  print(nome.hashCode);
}

void funcao(List<String> nomes) {
  print(nomes.hashCode);
  if (nomes.isNotEmpty) {
    nomes.clear();
  }
}

List<String> add(List<String> nomes) {
  var novoNomes = [...nomes];
  novoNomes.add('Fabian Vitali');
  print(novoNomes);
  return novoNomes;
}
