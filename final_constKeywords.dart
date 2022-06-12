

// final_constKeywords.dart --- Final and Const Keyword in Dart | How to Use? -- About Final and Const Keyword in Dart
// constant - final
//          - const

// final variable can only be set once

void main(List<String> args) {
  
  final a = 10;
  //a = 20; // Error - The final variable 'a' can only be set once.
  print(a); // --> 10;

  const b = 'Dart';
  //b = 'Java'; // Error - Constant variables can't be assigned a value.
  print(b);
  
}