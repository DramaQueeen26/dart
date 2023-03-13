void main(){
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  //final abilities = <String>['impostor']; //Listado de strings
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.png', 'ditto/back.png'];
  
  print("""
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  
  """);
  
}