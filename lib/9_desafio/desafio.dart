// ignore_for_file: avoid_function_literals_in_foreach_calls

void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  print('1 - Remova os pacientes duplicados e apresente a nova lista');
  final listaPacientes = pessoas.toSet().map((e) => e.split('|')).toList();
  listaPacientes.forEach(print);
  
  // final removeDuplicados = pessoas.toSet().toList();
  // final listaPacientes = [];
  // removeDuplicados.forEach((paciente) => listaPacientes.add(paciente.split('|')));
  // listaPacientes.forEach(print);

  print('');
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  print('2 - Apresente a quantidade de pessoas por sexo e seus nomes');
  final pessoaMasculino = [];
  final pessoaFeminino = [];

  for (var paciente in listaPacientes) {
    if (paciente[2].toLowerCase().substring(0, 1) == 'm') {
      pessoaMasculino.add(paciente[0]);
    }
    if (paciente[2].toLowerCase().substring(0, 1) == 'f') {
      pessoaFeminino.add(paciente[0]);
    }
  }
  print('Pessoas do sexo Masculino: ${pessoaMasculino.length}');
  pessoaMasculino.forEach(print);
  print('Pessoas do sexo Feminino: ${pessoaFeminino.length}');
  pessoaFeminino.forEach(print);

  print('');
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  print('3 - Apresente nome e didade dos paciente com mais de 18 anos');
  for (var paciente in listaPacientes) {
    final idade = int.tryParse(paciente[1]) ?? 0;
    if (idade > 18) {
      print('${paciente[0]}, ${paciente[1]}');
    }
  }

  print('');
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.
  print('4 - Apresente o paciente com a maior idade');
  final pacientesOrdenados = [...listaPacientes];
  pacientesOrdenados.sort((paciente1, paciente2) {
    final idadePaciente1 = int.tryParse(paciente1[1]) ?? 0;
    final idadePaciente2 = int.tryParse(paciente2[1]) ?? 0;

    return idadePaciente1.compareTo(idadePaciente2);
  });
  print('${pacientesOrdenados.last[0]}, ${pacientesOrdenados.last[1]}');
}
