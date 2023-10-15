// ignore_for_file: prefer_function_declarations_over_variables, unused_local_variable

void main() {
  // Função Arrow
  // Funções anônimas
  // Typedef

  var nome = '';
  var idade = 1;
  var funcaoQualquer = () {
    print('Chamou a função da variável');
    return '2000';
  };

  print(funcaoQualquer());

  print(nome.runtimeType);
  print(idade.runtimeType);
  print(funcaoQualquer);

  print(somaInteiros(10, 10));

  print('Iniciando chamada');
  chamaUmaFuncaoDeUmParametro((nome) {
    if (nome.isEmpty) {
      print('Nome veio vazio');
    } else {
      print(nome);
    }
  });
  print('Finalizando chamada');

  funx2((nome, nomeCompleto, {qq, x, x2}) => 'null');
}

// 3 PARTES
// 1 Tipo de retorno
// 2 Nome
// 3 Parâmetros (normais, nomeados e opicionais)
int somaInteiros(int numero1, int numero2) => numero1 + numero2;
void somaInteirosVoid(int numero1, int numero2) => numero1 + numero2;

void chamaUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Fabian Vitali';
  print('finalizando a função chamaUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
}

void chamaUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueRecebeNome) {
  var calculo = 1 + 1;
  var nomeCompleto = 'Fabian Vitali';
  print('finalizando a função chamaUmaFuncaoDeUmParametro');
  print('invocando funcaoQueRecebeNome');
  funcaoQueRecebeNome(nomeCompleto);
}

void funx(
    String Function(
      String nome,
      String nomeCompleto, {
      required String? x,
      required String? x2,
      int? qq,
    }) nome) {}

void funx2(FuncaoQueRecebeNomeComplexo nome) {}

typedef FuncaoQueRecebeNome = void Function(String nome);
typedef FuncaoQueRecebeNomeComplexo = String Function(
  String nome,
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
});
