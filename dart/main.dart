var nomes = ["Helio", "Faby", "Laurinha"];
Set<int> conjunto = {0, 1, 4, 5, 6, 7, 8, 9, 1, 1, 1};

void main() {
//addListArray("Aline");
//addListArray("Luziinha");
//addListSet(2);
  showListMap();
}

addListArray(nome) {
  nomes.add(nome);
  print(nomes.toString());
}

//Não permite valor repetido
addListSet(valor) {
  conjunto.add(valor);
  print(conjunto);
}

//Chave|Valor
showListMap() {
  Map<String, double> notasDosALunos = {'Ana': 9.1, 'Bia': 9.0, 'Carlos': 7.2};
  for (var registro in notasDosALunos.entries) {
    print('${registro.key} -  ${registro.value}');
  }
}

varDynamic() {
  dynamic x = 'teste';
  x = 1;
  x = false;
}
