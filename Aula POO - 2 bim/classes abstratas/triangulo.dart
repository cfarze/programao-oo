import 'forma_geometrica.dart';
import 'dart:math';

class TrianguloEquilatero extends FormaGeometrica {
  double _lado;
  double get altura => (sqrt(3) / 2) * _lado;

  TrianguloEquilatero(this._lado) : super(3);

  @override
  double calcularArea() {
    return (sqrt(3) / 4) * _lado * _lado;
  }

  @override
  double calcularPerimetro() {
    return 3 * _lado;
  }

  @override
  void desenhar() {
    print('Desenhando um triângulo equilátero com lado $_lado');
  }
}