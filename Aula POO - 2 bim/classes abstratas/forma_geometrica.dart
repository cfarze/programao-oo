
 abstract class FormaGeometrica {
  int _numLados;
  String cor;

  FormaGeometrica(this._numLados, {this.cor = 'branco'});

  double calcularArea();
  double calcularPerimetro();
  void desenhar();

  @override
  void imprimeNome() {
    print('Forma Geométrica');
  }

  @override
  void colorir(String cor) {
    print('Colorindo a forma de $cor');
  }

}