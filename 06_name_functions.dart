void main() {
  
  print( greetEveryone() );
  print('Suma: ${addTwoNumbers( 2, 3 )}');
  
  print( greetPerson( name: 'Mari' ) );
  
    
}

String greetEveryone(){
  return 'Hello everyone';
}

//Función de flecha
//String greetEveryone() => 'Hello everyone';

int addTwoNumbers( int a, int b ) => a + b;

//Parámetro opcional
int addTwoNumbersOptional( int a, [ int b = 0 ] ) {
   
  //b = b ?? 0;
  //b ?? = 0; //Otra forma de hacer lo mismo
  
  return a + b;
}

//Parámetros opcionales y por nombre
//Required para hacerlo obligatorio
//También se puede utilizar el String?
String greetPerson({ required String name, String message = 'Hola' }) {
  return '$message, $name';
}