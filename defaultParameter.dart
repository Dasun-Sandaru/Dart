
// defaultParameter.dart --- Default Optional Parameter in Dart --- About Default Optional Parameter in Dart

// Types of parameters
/*

  #1. Requird Parameters 
  #2. Optional Parameters
      2.0- optional parameter   
      2.1- named parameter
      2.2- default parameter ✔

*/


void main(List<String> args) {
  
  student1('Dasun');
  student2('Sandaru');
}

// Named Parameter
void student1(var name,{var age = 99}){
  print('Name - $name');
  print('Age - $age');
}

// Positinal Parameter
void student2(var name,[var age = 99]){
  print('Name - $name');
  print('Age - $age');
}