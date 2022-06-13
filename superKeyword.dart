
// superKeyword.dart --- Super Keyword in Dart --- About Super Keyword in Dart 


void main(List<String> args) {
  
  var objB = B();
  //objB.display();  // --> This is sub class display method 
                   // --> This is sub class x variable value 20

  // After use super keyword as -> print(super.x);
  //objB.display();
                  // This is sub class display method
                  // This is sub class x variable value 20
                  // 10

  // After use super keyword as -> super.display();
  objB.display();
                  // This is sub class display method
                  // This is sub class x variable value 20
                  // 10
                  // This is super class display method
                  // This is super class x variable value 20
}


class A{

  var x = 10;

  void display(){
    print('This is super class display method');
    print('This is super class x variable value $x');
  }
}

class B extends A{

  var x = 20;

  void display(){
    print('This is sub class display method');
    print('This is sub class x variable value $x');

    // Use super keyword to access to super class x variable
    print(super.x);

    // Use super keyword to access to super class x variable
    super.display();

  }
}