

// namedParameters.dart --- Named Parameter in Dart --- About Named Parameter in Dart


// Types of parameters
/*

  #1. Requird Parameters 
  #2. Optional Parameters
      2.0- optional parameter
      2.1- named parameter        ✔
      2.2- default parameter

*/


// when defining a function,use {param1,param2,...} to specify named parameters.
// when calling a function,you can specify named parameters using: paramName: value



void main(List<String> args) {
  
  // 2.1- named parameter
  student('Dasun',roll: 5,age: 24); 
    // Name - Dasun
    // Roll - 5
    // Age - 24

  student('Sandaru',age: 23,roll: 7);
    // Name - Sandaru
    // Roll - 7
    // Age - 23

  student('pasan');
    // Name - pasan
    // Roll - null
    // Age - null

  //child('Kavindu'); // Error : The named parameter 'roll' is required, but there's no corresponding argument

  child('Kavindu', roll: 3);
    // Name - Kavindu
    // Roll - 3
    // Age - null
}

void student(var name,{var roll,var age}){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}

void child(var name,{required var roll,var age}){
  print('Name - $name');
  print('Roll - $roll');
  print('Age - $age');
}