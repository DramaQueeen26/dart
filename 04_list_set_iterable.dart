void main() {
  
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 9, 10]; // List
  
  print('List originals: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('Index 0: ${numbers.first}');
  print('Reversed: ${numbers.reversed}'); // Iterable
  
  final reversedNumbers = numbers.reversed; 
  
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); //Se diferencia de la lista porque los valores no se pueden duplicar
  
  final numbersGreatherThan5 = numbers.where( (num) {
    return num > 5;
  });
  
  print('>5 Iterable: ${numbersGreatherThan5}');
  print('>5 Set: ${numbersGreatherThan5.toSet()}');
  
    
}