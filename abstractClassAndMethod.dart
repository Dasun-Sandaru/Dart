
// abstractClassAndMethod.dart --- Abstract Class and Abstract Method in Dart --- About Abstract Class and Abstract Method in Dart

// Tips: #1. if class has abstract method, that class must abstract class.
//       #2. abstract class can have nomal variable or nomal methods
//       #3. cannot make abstract method object
//       #4. if we need use nomal variable or metrhods in abstract class, we can extends abstract class with nomal class.But we must overriding abstract method in sub class.



void main(List<String> args) {
  
  //var objB = B(); //Error: Abstract classes can't be instantiated
  var objC = C();
  objC.display2(); // This statement use for overriding diaplay2 method in abstract B class
  objC.display3(); // This is nomal method which in abstract B class
}

// nomal Class
class A{
  //void display1(); // Error: 'display1' must have a method body because 'A' isn't abstract.
}

abstract class B{

  int a = 10;

  void display2();

  void display3(){
    print('This is nomal method which in abstract B class');
  }
}

class C extends B{

  @override
  void display2(){
    print('This statement use for overriding diaplay2 method in abstract B class');
    print('variable a value is = $a');
  }
}