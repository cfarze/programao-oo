import 'forma_geometrica.dart';

class Circulo extends FormaGeometrica {
  double _raio;
  double get diametro => _raio * 2;

  Circulo(this._raio) : super(0);

  @override
  double calcularArea() {
    return 3.14 * _raio * _raio;
  }

  @override
  double calcularPerimetro() {
    return 2 * 3.14 * _raio;
  }

  @override
  void desenhar() {
    print('Desenhando um círculo com raio $_raio');
  }
}