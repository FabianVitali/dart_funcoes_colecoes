// ignore_for_file: unused_catch_clause, unused_local_variable

void main() {
  var idade = '40';
  String? nome;

  try {
    var idadeParse = int.parse(idade);
    // nome!.toLowerCase();

    if (idadeParse == 40) {
      throw Exception();
    }
  } on FormatException catch (e, s) {
    // print(e);
    print(s);
    // print('Erro ao converter idade');
  } on TypeError {
    print('Erro de tipo dinâmico');
  } on Exception {
    print('Erro idade == 40');
  } catch (e) {
    print('Erro ao executar programa');
  } finally {
    print('finally');
  }
}
