// * Clases que implementan específicamente ciertas funcionalidades
abstract class Animal {

}

abstract class Mammal extends Animal {}
abstract class Bird extends Animal {}
abstract class Fish extends Animal {}

abstract class Flying {
  void fly() => print('I am fliyng');
}

abstract class Walker {
  void walk() => print('I am walking');
}

abstract class Swimmer {
  void swim() => print('I am swimming');
}

// * El mixin se utiliza con with, es decir, extiende de varias clases
class Dolphin extends Mammal with Swimmer {}
class Bat extends Mammal with Flying, Walker {}
class Cat extends Mammal with Walker {}

class Pigeon extends Bird with Walker, Flying {}
class Duck extends Bird with Walker, Flying, Swimmer {}

class Shark extends Fish with Swimmer {}
class fliyngFish extends Fish with Swimmer, Flying {}

void main() {

  final flipper = Dolphin();
  flipper.swim();

  final batman = Bat();
  batman.fly();
  batman.walk();

  final namor = Duck();
  namor.fly();
  namor.swim();
  namor.walk();

}
