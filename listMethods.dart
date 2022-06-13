
// listMethods.dart --- List Methods in Dart --- About List Methods in Dart


void main(List<String> args) {
  
  List a = [10,20,30,40,50,60];

  print(a); // --> [10, 20, 30, 40, 50, 60]

  a.add(70);
  print(a); // --> [10, 20, 30, 40, 50, 60, 70]

  a.addAll([80,90,100]);
  print(a); // --> [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

  //eg: a.insert(index, element)
  a.insert(1, 120);
  print(a); // --> [10, 120, 20, 30, 40, 50, 60, 70, 80, 90, 100]

  // display 1st element
  print(a.first); // --> 10

  // dispaly last element
  print(a.last); // --> 100

  // remove value
  a.remove(120);
  print(a); // --> [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

  //eg: a.removeAt(index)
  a.removeAt(1);
  print(a); // --> [10, 30, 40, 50, 60, 70, 80, 90, 100]

  a.removeLast();

  List b = [23,76,1,450,22,2];

  // sort
  b.sort();
  print(b); // --> [1, 2, 22, 23, 76, 450]

  // shuffle
  //a.shuffle();
  print(a); // --> [60, 30, 90, 10, 70, 80, 50, 40]

  // length
  print(a.length); // --> 8

  // reverse
  print(a.reversed); // --> (90, 80, 70, 60, 50, 40, 30, 10)

  // list type
  print(a.runtimeType); // --> List<dynamic>

  // isEmpty
  print(a.isEmpty); // --> false
  print(a.isNotEmpty); // --> true

  // clear
  a.clear();
  print(a); // --> []

}