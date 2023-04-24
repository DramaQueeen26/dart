void main() {

  print('Inicio del programa');

  httpGet('https://fernando-herrera.com/cursos')
    .then( 
      (value){
        print( value );
      })
    .catchError( (err) {
    print('Error: $err');
  });

  print('Fin del programa');

}


Future httpGet( String url ) {

  return Future.delayed( const Duration( seconds: 1 ), () {
    return 'Repuesta de la petición http';
  } );

}