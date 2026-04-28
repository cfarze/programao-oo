import 'dart:core';
class Fila{

  List<String> _dados = [];
  int _final = 0;

  // Fila(); ->  Compilador cria o construtor vazio
  void enfileirar(String item){
    _dados[_final] = item;
    _final++;
  }
  String desenfileirar(){
    if(estaVazia()){
      print('Fila vazia');
      return '';
    }
    String item = _dados[0];
    for(int i = 0; i < _final - 1; i++){
      _dados[i] = _dados[i + 1];
    }
    _final--;

    return item;
  }

  bool estaVazia(){
    return _final == 0;
  }

  void imprimir(){
    for(int i = 0; i < _final; i++){
      print(_dados[i]);
    }
  }

  // Acessor/Getter - retorna o valor do atributo 
  //Property - sintaxe mais clean
  // - parece que você acessa o atributo público, mas chama uma função
  int get tamanho {
    print('teste');
    return _final;
  }

  void main(){
    Fila fila = Fila();

    print(fila.tamanho);

    fila.desenfileirar();
    fila.enfileirar('A');
    fila.enfileirar('B');
    fila.enfileirar('C');
    fila.imprimir();
    fila.desenfileirar();
    fila.desenfileirar();
    fila.desenfileirar();
  }
}