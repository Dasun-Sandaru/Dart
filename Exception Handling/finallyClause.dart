
// finallyClause.dart --- Finally Clause in Dart --- About Finally Clause in Dart

// #4. Finally clause
//     - Whether there is an exception or not, FINALLY clause is always executed.


void main(List<String> args) {
  
  try {

    int a = 5 ~/ 0;
    print(a);

  } catch (e) {

    print('Exception: $e'); // --> Exception: IntegerDivisionByZeroException

  } finally{

    print('Whether there is an exception or not, FINALLY clause is always executed');
  }

}