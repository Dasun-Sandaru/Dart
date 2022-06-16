
// Abstract Classes & Polymorphism Example

// Abstract Class
    // Nomal Method --> can
    // Object Make --> No
    // Sub Class Obj Refer --> yes
    // Constructer --> No

void main(){

  // Car c1 = new Car();
  // c1.park();

  Vehicle v = new Van();
  v.park();
  v.canNomalMethod();

  //var vb = Vehicle(); // Error : Abstract classes can't be instantiated.

}


abstract class Vehicle{

  //void park(); /* Error::  'park' must have a method body because 'Vehicle' isn't abstract.Try making 'Vehicle' abstract, or adding a body to 'park'. */
  
  // void park(){
  //     // Meaning ??
  // }

  void park();

  void canNomalMethod(){
    print("Can Do");
  }

}


class Car extends Vehicle{

  void park(){
    print("Park is Ok - Car");
  }

}

class Van extends Vehicle{

  void park(){
    print("Park is Ok - Van");
  }

}

class Bus extends Vehicle{

  void park(){
    print("Park is Ok - Bus");
  }

}