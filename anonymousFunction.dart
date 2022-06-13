
// anonymousFunction.dart --- Anonymous Functions | Lambda Expression in Dart  --- About Anonymous Functions or Lambda Expression in Dart

// we can also create a nameless function called an Anonymous Function, or sometimes a Lambda Function

// syntax: Anonymous Function

  // (parameter_list){
  //   //statement
  // };

void main(List<String> args) {
  
  var myName = (String name){
    print('Name - $name');
  };

  Function age = (int age){
    print('Age - $age');
  };

  // function call
  myName('Dasun');

  age(23);
}