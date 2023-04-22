void main() {
  
  final mySquare = Square(side: -5);

  // mySquare.side = 5;

  print('Área: ${mySquare.area}');

}

class Square {

  // * Propiedad privada
  double _side;

  // * Aserciones - Mensajes de error
  // ! Las asersiones solo funcionan en modo depuración, es decir, no funcionan en producción
  Square({ required double side })
    : assert( side >= 0, 'Value must be greather o equal than 0' ),
      _side = side ;

  double get area {
    return _side * _side;
  }

  set side( double value ){
    
    print('Setting new value $value');
    
    if ( value < 0 ) throw 'Value must be greather than 0';

    _side = value;

  }

  double calculateArea() {
    return _side * _side;
  }

}