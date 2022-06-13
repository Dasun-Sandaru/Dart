
// list.dart --- List in Dart --- About List in Dart

// In dart, arrays are List objects and elements are ordered in sequence in an List

  // #1. Fixed lenght List
  // #2. Growable list

void main(List<String> args) {
  
  List lst = [10,20,30];
  print(lst); // --> [10, 20, 30]

  List<String> list1 = ['car','ball','bat'];
  print(list1); // --> [car, ball, bat]

  List list2 = [2.4, 6.5, 1.1];
  print(list2); // --> [2.4, 6.5, 1.1]
  list2 = ['letterA','letterB','letterC'];
  print(list2); // --> [letterA, letterB, letterC]

  // print specify value by giving index
  print(list2[1]);

  // assign new value
  list2.add('New value');
  print(list2);

  // update value
  list2[3] = 'Update new value';
  print(list2);

  // remove value
  lst.remove(20);
  print(lst); // --> [10, 30]

  // print list values
  for (var element in list2) {
    print(element);
  }

  // Output ---> 
                // letterA
                // letterB
                // letterC
                // Update new value


  const List list3 = [6,12,18,24,30];
  print(list3);
  list3.add(36); // Error: Unsupported operation: Cannot add to an unmodifiable list
  print(list3);

  final List list4 = [6,12,18,24,30];
  print(list4);
  list4.add(36); // Can do this
  print(list4);
}