// 1 - Associação

// Aluno --- Realiza --- Matrícula
// Professor --- Corrige --- Provas

// 2 - Agregação

// Possui / Contém / Tem

// Cliente <>----- Endereço
// Lista <>----- Item
// Aluno <>----- Disciplina
// Pessoa <>----- Órgão

class Aluno {
  String nome;
  int matricula;
  Disciplina _disciplina;

  Aluno(this.disciplina);

  set disciplina(Disciplina disciplina) {
    _disciplina = disciplina;
  }
}

class Disciplina {
  String nome;
  int codigo;
}

// 3 - Composição

// Possui / Contém / Tem  (mas o objeto parte não pode existir sem o objeto todo)

// Pessoa <.>----- Órgão
// Vendas <.>----- ItemVenda
// Carro <.>----- Motor

class Venda {
  List<ItemVenda> _itens = [];

  adicionarItem() {
    _vendas.add(ItemVenda());
  }
}

// 4 - Herança

// é um / é uma / is a

// Pessoa <|----- Aluno
// Banco <|----- Agência xxxxx NÃO É HERANÇA, É COMPOSIÇÃO
// NumeroReal <|----- NumeroInteiro <|----- Numero Natural

class ClassePai{
  String atributo1;
  String atributo2;
  String _atributo3;

  ClassePai(this.atributo1, this.atributo2, this._atributo3);

  String get atributo3 => _atributo3;
  set atributo3(String atributo3) {
    _atributo3 = atributo3;
  }

  imprime() {
    print("classe pai:")
    print(atributo1);
    print(atributo2);
    print(atributo3);
  }
}

class ClasseFilha extends ClassePai {
  String atributo4;

  // A classe filha sempre precisa inicializar
  // os atributos da classe pai primeiro
  // se a classe pai tiver o construtor default (sem parâmetros ou com valor dafault)
  // --- a chamada não precisa ser explícita
  ClasseFilha(String atributo1, String atributo2, this.atributo4) : super(atributo1, atributo2);

  @override
  imprime() {
    super.imprime();
    print('classe filha');
  }
}

// Buscar por:

// Effective Java
// Effective Dart
// Effective C++
