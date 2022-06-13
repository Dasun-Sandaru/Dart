
// Create private Instance Variable Folder --- privateInstanceVariable--- Private Instance Variable in Dart --- About Private Instance Variable in Dart

import 'privateInstanceVariable.dart';

void main(List<String> args) {
  
  var objA = A();
  objA.display1(); // --> Private variable = 10

  //objA._avar = 23; // Error: The setter '_avar' isn't defined for the type 'A'.

  objA.bvar = 34; // can becouse bvar variable is not private
  objA.display2();
}