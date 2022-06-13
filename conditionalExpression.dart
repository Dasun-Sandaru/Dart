

// conditionalExpression.dart-- Conditional Expression in Dart -- About Conditional Expression in Dart

// Type 1
//  conditon ? expr1 : expr2;

// Type 2
//  expr1 ?? expr2


void main(List<String> args) {
  
  // Type 1
  int a = 3;
  (a<2) ? print('true') : print('false');

  // Type 2
  var d = null , e = 5;

  var temp = d ?? e;
  print(temp);

}