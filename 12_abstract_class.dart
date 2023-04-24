void main() {
  
  final windPlant = WindPlant( initialEnergy: 100 );
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );


  print('Wind: ${ chargePhone( windPlant ) }');
  print('Nuclear: ${ chargePhone( nuclearPlant ) }');

}

double chargePhone( EnergyPlant plant ) {
  if ( plant.energyLeft < 10 ) {

    throw Exception('Not enough energy');

  }else {

    return plant.energyLeft - 10;

  }
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  final PlantType type; // ? Nuclear, wind, water, como son tipos específicos nos podemos crear una enumeración

  EnergyPlant({ required this.energyLeft, required this.type });

  // ! Solo está la firma, hay que implementarlo
  void consumeEnergy ( double amount );

}

// * Extends o implements
// ? Extends es extender o heredar de otra clase
// ? Implements
class WindPlant extends EnergyPlant {

  // * Para llamar al constructor padre se utiliza la palabra super
  WindPlant({ required double initialEnergy })
    : super( energyLeft: initialEnergy, type: PlantType.wind );

  // * Esta es la implementación
  // * Override porque estamos sobreescribiendo el método
  @override
  void consumeEnergy( double amount ) {

    energyLeft -= amount;

  }

}

// * Implements nos permite tener todos estos overrides
// * Nos permite implementar un método en particular
// * Es más específico
class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({ required this.energyLeft });

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= ( amount * 0.5 );
  }

}