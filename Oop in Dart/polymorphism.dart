



// Polymorphism
// - overriding
// - inhertitance
// - upcasting & downcasting

// Polymorphism ---->  Super class එකක method එකක් Sub class එකේදි overides කරාට පස්සේ upcasting කරලා Super class refernce එක හරහා Sub class method එක RUN කරනන එක


void main(){


  B b = new B();
  b.printing(); // Output -- Printing B from Class B

  A a = new A();
  a.printing(); // Output -- Printing A from Class A


  //Doing Polymorphism
  A a1 = new B();
  a1.printing(); // Output --Printing B from Class B


}

class A{
  
  void printing(){
    print("Printing A from Class A");
  }

}


class B extends A{

  void printing(){
    print("Printing B from Class B");
  }

}