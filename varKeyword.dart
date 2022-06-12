
// Var Keyword in Dart | How to Use var Keyword?
// A way to declare a variable without specifying its type

void main(List<String> args) {
  
  var a = 20;
  print(a.runtimeType);

  var b = 'Dasun';
  print(b.runtimeType);

  var c = true;
  print(c.runtimeType);
  //c = 10; // --> Error
  //c = false; // --> Not Error

  var dy;

  dy = 10;
  print(dy); // --> 10
  print(dy.runtimeType); // --> int

  dy = 'assing new value';
  print(dy); // --> assing new value
  print(dy.runtimeType); // --> string

  dy = true;
  print(dy); // --> true
  print(dy.runtimeType); // --> bool

}