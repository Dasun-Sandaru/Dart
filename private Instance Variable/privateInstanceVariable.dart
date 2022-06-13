
// Create private Instance Variable Folder --- privateInstanceVariable --- Private Instance Variable in Dart --- About Private Instance Variable in Dart

// Use _ before variable name

class A{

  // private variable
  var _avar = 10;
  var bvar = 20;

  void display1(){
    print('Private variable = $_avar');
  }

  void display2(){
    print('Private variable = $bvar');
  }
  
}