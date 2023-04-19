void main() {
  
  //La palabra new no es necesaria
  final wolverine = Hero( 'Logan', 'Regeneración' );
  
  print(wolverine);
}

class Hero {
  
  String name;
  String power;
  
  Hero( this.name, this.power );
  
  //El operador this es opcional
//   Hero ( String pName, String pPower )
//       : name = pName,
//         power = pPower;
    
  
  
  
}