
// instanceVariablesAndMethods.dart--- Instance Variables & Instance Methods in Dart --- About Instance Variables & Instance Methods in Dart


void main(List<String> args) {
  
  var st = Student();
  st.name = 'Dasun';
  st.age = 23;

  st.display();
  // name is Dasun
  // age is 23
  
}

class Student{

  // Instance Variables
  
  var name;
  var age;

  // Instance Method
  void display(){
    print('name is $name');
    print('age is $age');
  }
}