void main() {
  // 1. Criando com valores
  print('--- 1. Criando com valores ---');
  Map<String, int> idadePessoas = {
    'Alice': 30,
    'Bob': 25,
    'Carol': 28,
  };
  print(idadePessoas);

  // 2. Criando vazio e adicionando depois
  print('\n--- 2. Criando vazio ---');
  Map<String, String> capitais = {};
  capitais['Brasil'] = 'Brasília';
  capitais['França'] = 'Paris';
  capitais['Japão'] = 'Tóquio';
  print(capitais);

  // 3. Acessando valores
  print('\n--- 3. Acessando valores ---');
  print(capitais['Japão']); // Tóquio
  print(capitais['Osasco']); // null, pois a chave não existe

  // 4. Adicionando e modificando
  print('\n--- 4. Adicionando e modificando ---');
  Map<String, int> estoque = {'caneta': 10};
  estoque['lápis'] = 20; // chave nova: adiciona
  estoque['caneta'] = 15; // chave existente: modifica
  print(estoque);

  // 5. Removendo itens
  print('\n--- 5. Removendo itens ---');
  Map<String, String> paises = {'BR': 'Brasil', 'US': 'Estados Unidos'};
  paises.remove('US');
  print(paises);

  // 6. Verificando chave ou valor
  print('\n--- 6. containsKey / containsValue ---');
  Map<String, int> notas = {'João': 8, 'Maria': 9};
  print(notas.containsKey('João')); // true
  print(notas.containsValue(10)); // false

  // 7. Iterando
  print('\n--- 7. Iterando ---');
  Map<String, String> cores = {'maçã': 'vermelha', 'céu': 'azul'};
  for (var chave in cores.keys) {
    print('Chave: $chave');
  }
  for (var valor in cores.values) {
    print('Valor: $valor');
  }
  cores.forEach((chave, valor) {
    print('$chave -> $valor');
  });

  // 8. Propriedades úteis
  print('\n--- 8. Propriedades úteis ---');
  Map<String, int> contagem = {'a': 1, 'b': 2};
  print(contagem.length);
  print(contagem.isEmpty);
  print(contagem.keys);
  print(contagem.values);

  // 9. Map aninhado
  print('\n--- 9. Map aninhado ---');
  Map<String, Map<String, dynamic>> usuarios = {
    'user1': {'nome': 'Ana', 'idade': 22},
    'user2': {'nome': 'Carlos', 'idade': 30},
  };
  print(usuarios['user1']?['nome']); // Ana

  // 10. map e MapEntry
  print('\n--- 10. map e MapEntry ---');
  Map<String, int> notas2 = {'João': 7, 'Maria': 9};
  var notasComBonus = notas2.map((nome, nota) => MapEntry(nome, nota + 1));
  print(notasComBonus); // {João: 8, Maria: 10}
}