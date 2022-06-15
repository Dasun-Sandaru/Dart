
// tryOnClause.dart --- Try and On Clause --- About Try and On Clause

// #1. On clause
//     - When you know the exception to be thrown, use ON clause

void main(List<String> args) {
  
  int a = 5 ~/ 2;
  print(a); // --> 2

  //int b = 5 ~/ 0;
  //print(b); // Error: Unhandled exception: IntegerDivisionByZeroException

  // Use On clause
  try {

    int b = 5 ~/ 0;
    print(b);
  } on IntegerDivisionByZeroException{
    print('Can not divied by zero');
  }


}