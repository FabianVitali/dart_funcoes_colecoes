void main() {
  var numerosLista = <int?>[];
  numerosLista.add(1);
  numerosLista.add(2);
  numerosLista.add(3);
  numerosLista.add(3);
  numerosLista.add(null);
  numerosLista.add(1);
  numerosLista.add(2);
  print(numerosLista);

  var numerosSet = <int?>{};
  numerosSet.add(1);
  numerosSet.add(2);
  numerosSet.add(3);
  numerosSet.add(4);
  numerosSet.add(null);
  numerosSet.add(1);
  numerosSet.add(2);
  print(numerosSet);

  print('.toSet()');
  print(numerosLista.toSet());

  numerosSet.forEach(print);

  var numeros1 = {1, 2, 3, 4, 5, 6};
  var numeros2 = {1, 3, 4, 7};

  print('.difference()');
  print(numeros1.difference(numeros2));
  print(numeros2.difference(numeros1));

  print('.union');
  print(numeros1.union(numeros2));

  print('.intersection');
  print(numeros1.intersection(numeros2));

  var nomes1 = {'Fabian', 'Elisandra', 'Floki'};
  var nomes2 = {'Fabian', 'Olívia', 'Darci'};
  print(nomes1.intersection(nomes2));

  print('lookup');
  print(numeros1.lookup(1));
  print(nomes1.lookup('fabian'));
}
