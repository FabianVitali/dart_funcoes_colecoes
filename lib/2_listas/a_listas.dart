void main() {
  var numeros = List.generate(10, (index) => index);
  numeros.forEach(printAcademia);

  // Expand
  // Array BiDimensional
  var lista = [
    [1, 2],
    [3, 4],
  ];

  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);

  // any
  print('.any');
  final listaBusca = ['Fabian', 'Elisandra', 'Floki'];

  if (listaBusca.any((nome) => nome == 'Fabian')) {
    print('Tem Fabian');
  } else {
    print('Não tem Fabian');
  }

  // every
  final listaBusca2 = ['Fabian', 'Elisandra', 'Floki'];

  if (listaBusca2.every((nome) => nome.contains('f'))) {
    print('Todos os nomes tem a letra F');
  } else {
    print('Nem todos os nomes tem a letra F');
  }

  // .sort
  print('.sort');
  var listaParaOrdenacao = [99, 22, 10, 9, 0, 765, 1, 2, 3, 100, 300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaNomesOrdenacao = ['Fabian', 'Elisandra', 'Floki', 'Olívia', 'Darci'];
  listaNomesOrdenacao.sort();
  print(listaNomesOrdenacao);

  var listaPacientes = [
    'Fabian Vitali|40',
    'Elisandra Fiorim|37',
    'Floki Fiorim|4',
    'Olívia Fiorim|1',
  ];

  var novaListaPacientes = [...listaPacientes];

  novaListaPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if (idadePaciente1 > idadePaciente2) {
      return 1;
    } else if (idadePaciente1 == idadePaciente2) {
      return 0;
    } else {
      return -1;
    }
  });
  print(novaListaPacientes);

  // CompareTo
  print('.dort com compareTo');
  var listaPacientes2 = [
    'Fabian Vitali|40',
    'Elisandra Fiorim|37',
    'Floki Fiorim|4',
    'Olívia Fiorim|1',
  ];

  listaPacientes2.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);

  // Pacientes por função
  final listaPacientes3 = [
    'Fabian Vitali|40',
    'Elisandra Fiorim|37',
    'Floki Fiorim|4',
    'Olívia Fiorim|1',
  ];
  print('Antes');
  print(listaPacientes3);
  print('Depois');
  funcaoQualquer(listaPacientes3);
  print('Original');
  print(listaPacientes3);
}

void printAcademia(int valor) {
  print(valor);
}

void funcaoQualquer(List<String> pacientes) {
  final localPacientes = [...pacientes];
  localPacientes.sort((paciente1, paciente2) {
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(localPacientes);
}
