// ignore_for_file: unused_local_variable, avoid_init_to_null

void main() {
  // O Mapa é uma representação de Chave:Valor
  final paciente = <String, String>{
    'nome': 'Fabian Vitali',
    'Curso': 'Academia do Flutter'
  };

  // O mapa pode ser nulo mas se for criado deve conter
  // a chave e o valor não nulos
  Map<String, String>? pacienteNullSafety = null;

  // O mapa e o valor não podem ser nulos mas a chave pode
  var pacienteNullSafety2 = <String?, String>{
    null: 'Fabian',
  };

  // O mapa e a chave não podem ser nulos mas o valor pode
  var pacienteNullSafety3 = <String, String?>{
    'nome': null,
  };

  var produtos = <String, String>{};
  // Só será adicionado se a chave não existir
  produtos.putIfAbsent('nome', () => 'Cerveja');
  produtos.putIfAbsent('nome', () => 'Refrigerante');
  print(produtos);

  produtos.update('nome', (value) => 'Refrigerante');
  print(produtos);
  produtos.update('preco', (value) => '10', ifAbsent: () => '10');

  // Recuperando o valor;
  print('Produto ${produtos['nome']}');
  print('Preço ${produtos['preco']}');

  produtos.forEach((key, value) {
    print('Chave: Valor -> $key: $value');
  });

  // Fazer algum processo asyncrono dentro dele
  for (var entry in produtos.entries) {
    print('Chave: Valor -> ${entry.key}: ${entry.value}');
  }

  for (var key in produtos.keys) {
    print('Chave: $key');
  }
  for (var value in produtos.values) {
    print('Valores: $value');
  }

  var novoMapaProdutos = produtos.map((key, value) {
    return MapEntry('${key}_nova', value.toUpperCase());
  });
  print(novoMapaProdutos);

  var mapa = <String, Object>{
    'nome': 'Fabian Vitali',
    'curso': [
      {
        'nome': 'Academia do Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      },
      {
        'nome': 'Arquiteto Flutter',
        'descricao': 'Melhor curso de Flutter do Brasil!!!'
      }
    ]
  };
  print(mapa['curso']);
}
