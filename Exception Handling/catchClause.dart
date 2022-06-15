
// catchClause.dart --- Catch Clause in Dart --- About Catch Clause in Dart

// #2. Catch clause with Exception object
//     - When you do not know the exception use CATCH clause

// #3. Catch clause with Exception object and StackTrace object
//     - Before excusing STACK TRACE to know the events occurred exception was thrown.

// you can specify one or two parameters to catch().
// The first is the exception object that was thrown,and the second is the StackTrace object

void main(List<String> args) {
  
  try {

    int a = 5 ~/ 0;
    print(a);

  } catch (e,s) {

    print('Exception: $e'); // --> Exception: IntegerDivisionByZeroException

    //StackTrace
    print(s);
  }
}