
// constructor.dart --- Constructor in Dart | Default Constructor, Named Constructor and Parameterized Constructor --- About Constructor in Dart | Default Constructor, Named Constructor and Parameterized Constructor

// Constructors

  // #1. Default constructor
  // #2. Parameterized constructor
  // #3. Named constructor

void main(List<String> args) {
  
  // #1. Default constructor call
  //var objA = A(); 

  // #2. Parameterised constructor call
  var objA = A(3, 4);
  
  // #3. Named constructor
  var objB = A.first();
  var objC = A.second();
}

class A{

  // #1. Default constructor
  // A(){
  //   print('This is Default construtor');
  // }

  // #2. Parameterized constructor
  A(int a, int b){
    print('a = $a , b = $b');
  }

  // #3. Named constructor
  A.first(){
    print('This is first named consturctor');
  }

  A.second(){
    print('This is second named consturctor');
  }
}