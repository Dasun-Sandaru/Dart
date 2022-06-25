
// json.dart --- Json in Dart --- About Json in Dart


import 'dart:convert';

void main(List<String> args) {
  
  //map
  var myMap1 = {
    'key': 1200,
  };

  //print value
  print(myMap1['key']); // --> 1200

  //map
  var myMap2 = {'results': [{'id': 0001,'name': 'dasun'},{'id': 0002,'name': 'sandaru'}],};

  //print value
  print(myMap2['results']); // --> [{id: 1, name: dasun}, {id: 2, name: sandaru}]

  //map
  var myMap3 = '{"results": [{"id":1,"name":"dasun"},{"id":2,"name":"sandaru"}]}';

  //print value
  //print(myMap3["results"]); // --> Error

  // 1.get json output (String)
  // 2.import package -
  // 3.String to Map using jsonDecode
  // 4.Map to List

  Map users = jsonDecode(myMap3);
  print(users); // --> {results: [{id: 1, name: dasun}, {id: 2, name: sandaru}]}

  //get list part form map
  List list = users['results'];
  print(list); // --> [{id: 1, name: dasun}, {id: 2, name: sandaru}]

  //get specific list value
  print(list[0]['id']); // --> 1



  //get all specific values
  for (var element in list) {
    print(element);
  }
  // --> 
  // {id: 1, name: dasun}
  // {id: 2, name: sandaru}



  //get all specific values
  for (var element in list) {
    print(element['name']);
  }
  // --> 
  // dasun
  // sandaru

}
