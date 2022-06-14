
// staticVariableAndMethod.dart --- Static Variable and Static Method in Dart --- About Static Variable and Static Method in Dart

// instance variables and instance method is based on the objects.

// static variable or class variable and static method is based on the class.

// Tip: #1. we can't use instance variable in static method. 

void main(List<String> args) {
  
  var objA = A();

  print(objA.a); // 10

  //print(objA.b); // Error: The static getter 'b' can't be accessed through an instance.

  // static variable call
  print(A.b); // 20

  // static method call
  A.display(); // this is static method & b is static variable = 20

}

class A{

  int a = 10;
  static int b = 20;

  static void display(){
    print('this is static method & b is static variable = $b');
    //print(a); // we can't use instance variable in static method.
  }


}