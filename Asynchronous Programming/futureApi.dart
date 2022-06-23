
// futureApi.dart --- Future API in Dart --- About Future API in Dart

void main(List<String> args) {
  
  getDataOne(); // --> d@gmail.com

  // future state - uncompleted 
  // baseMethodTwo();
  // // --> [1st excute] --> Instance of 'Future<String>'
  // // --> [2nd excute] --> d@gmail.com

  // // future state - completed 
  // baseMethodThree();
  // // --> [1st excute] --> d@gmail.com

  // // complete state with error
  // baseMethodFour();
 
}


// without return type for method
Future<void> getDataOne() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  String email = await Future.delayed(Duration(seconds: 3),(() {
    return 'd@gmail.com';
  }));

  print(email);
}


// with return type for method
Future<String> getDataTwo() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  String email = await Future.delayed(Duration(seconds: 3),(() {
    return 'd@gmail.com';
  }));

  return email;
}

void baseMethodTwo(){
  print(getDataTwo()); // --> Error: future uncomplete state
}


// with return type for method
Future<String> getDataThree() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  String email = await Future.delayed(Duration(seconds: 3),(() {
    return 'd@gmail.com';
  }));

  return email;
}

Future<void> baseMethodThree() async{
  print(await getDataThree()); // future complete state
}


// complete state with error
Future<String> getDataFour() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  await Future.delayed(Duration(seconds: 3),() {
    throw Exception('server down');
  });
}

Future<void> baseMethodFour() async{
  print(await getDataFour()); // future complete state
}

