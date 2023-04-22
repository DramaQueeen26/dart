void main() {
  
  //La palabra new no es necesaria
  final wolverine = Hero( name: 'Logan', power: 'Regeneración' );
  
  print(wolverine); //Tiene por defecto el toString()
  print(wolverine.name);
  
}

class Hero {
  
  String name;
  String power;
  
  Hero({ 
    required this.name, 
    this.power = 'Sin poder'
    });
  
  //El operador this es opcional
//   Hero ( String pName, String pPower )
//       : name = pName,
//         power = pPower;
  
  //Sobrescribir el comportamiento nativo de toString()
  //Override nos permite sobrescribir 
  @override
  String toString(){
    return '$name - $power';
  }
  
}