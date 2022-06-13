

// loops.dart -- Loops in Dart -- About Loops in Dart

// For loop
// while loop
// do - while loop

import 'dart:io';

void main(List<String> args) {
  
  // For loop

  for (var i = 0; i < 5; i++) {
    print(i);
  }

  // For loop example star patten

  // for (var i = 1; i <= 5; i++) {
  //   for (var j = 0; j < i; j++) {
  //     //print("*");
  //     stdout.write("*");
  //   }
  // }

  // ------------------------------


  // while loop
  int a=0;

  while(a<5){
    print('dart');
    a++;
  }
  
  // ------------------------------

  // do - while loop
  int b =0;

  do{
    print('java');
    b++;
  }while(b<5);

  // ------------------------------

  // Break and Continue Statement -: loops - if-else switch-case

  // Break
  for (var  c= 0; c < 5; c++) {

    if (c == 3) {
      break;
    }

    print(c);
  }

  // Continue
  for (var d = 0; d < 5; d++) {
    if (d == 3) {
      continue;
    }

    print(d);
  }


}