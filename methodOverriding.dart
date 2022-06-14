
// methodOverriding.dart--- Method Overriding in Dart --- About Method Overriding in Dart


void main(List<String> args) {
  
  var objB = B();
  objB.display(); // Class B
}

class A{

  void display(){
    print('Class A');
  }
}

class B extends A{

  @override
  void display(){
    print('Class B');
  }
  
}