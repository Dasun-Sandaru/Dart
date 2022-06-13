
// map.dart -- Map in Dart -- About Map in Dart

// in general, a map is an object that associates keys and values.Both keys and values can be any type of object

void main(List<String> args) {
  
  Map map1 = {
    'first': 10,
    'second': 20,
    'third': 30,
    'fourth': 'days',
    'fifth': true,
  };

  print(map1); // --> {first: 10, second: 20, third: 30, fourth: days, fifth: true}

  Map map2 = Map <int,String> ();
  map2[2] = 'car';
  map2[3] = 'bus';

  print(map2); // --> {2: car, 3: bus}


  Map <int,String> map3 = {
    1: 'car',
    2: 'bus'
  };
  
  map3[3] = 'van';
  
  print(map3); // --> {1: car, 2: bus, 3: van}

  // length
  print(map3.length); // --> 3

  // #Tip -- const map cannot modify

  // HashMap -- A hash-table-based implementation of Map

}