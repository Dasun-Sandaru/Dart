
// classAndobjects.dart --- Class and Objects in Dart --- About Class and Objects in Dart

// syntax: Class

  // class class_name{
  //   // class members
  // }

// Create object

  // var object_name = new ClassName();

void main(List<String> args) {
  
  // create object
  var obj = Pet();
  obj.display();  // --> Hello
}

// create class
class Pet{
  void display(){
    print('Hello');
  }
}