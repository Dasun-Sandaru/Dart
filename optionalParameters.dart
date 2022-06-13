
// optionalParameters.dart --- Optional Positional Parameter in Dart --- About Optional Positional Parameter in dart


// Types of parameters
/*

  #1. Requird Parameters
  #2. Optional Parameters
      2.0- optional parameter   ✔
      2.1- named parameter
      2.2- default parameter

*/

void main(List<String> args) {

  // 2.0- optional parameter
  student('Dasun', 7, 23); // ok

  //student('Dasun'); // Error: 3 positional argument(s) expected, but 1 found.

  child('Kavindu', 3);
    // Name - Kavindu
    // Roll - 3
    // Age - null

  man('Kamal',2);
    // Name - Kamal
    // Roll - 2
    // Age - null

  woman();
    // Name - null
    // Roll - null
    // Age - null
}

void student(var name,var roll,var age){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}

void child(var name,var roll,[var age]){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}

void man(var name,[var roll,var age]){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}

void woman([var name,var roll,var age]){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}