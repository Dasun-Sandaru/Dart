
// asynchronous.dart --- Asynchronous Programming in Dart --- About Asynchronous Programming in Dart

void main(List<String> args) {
  
  // getDataOne(); // --> d@gmail.com  [After 3 second]

  //print('Main Codes');
  // // --> [1st excute] --> Main Codes
  // // --> [2nd excute] --> d@gmail.com

  // getDataTwo();
  // print('Main Codes');
  // // --> [1st excute] --> other codes in getDataTwo method
  // // --> [2nd excute] --> Main Codes
  // // --> [3rd excute] --> d@gmail.com
  // // --> [4th excute] --> dasun

  // getDataThree();
  // print('Main Codes');
  // // --> [1st excute] --> Main Codes
  // // --> [2nd excute] --> d@gmail.com
  // // --> [3rd excute] --> other codes in getDataThree method
  // // --> [4th excute] --> dasun

  // getDataFour();
  // print('Main Codes');
  // // --> [1st excute] --> Main Codes
  // // --> [2nd excute] --> d@gmail.com
  // // --> [3rd excute] --> dasun
  // // --> [4th excute] --> other codes in getDataFour method

  getDataFive();
  print('Main Codes');
  // --> [1st excute] --> Main Codes
  // --> [2nd excute] --> Email -: d@gmail.com , Name -: dasun
  // --> [3rd excute] --> other codes in getDataFive method

}

// simulate network request
void getDataOne() {

  // get user email
  Future.delayed(Duration(seconds: 3),(() {
    print('d@gmail.com');
  }));

}

void getDataTwo() {

  // get user email
  Future.delayed(Duration(seconds: 3),(() {
    print('d@gmail.com');
  }));

  // get bio data
  Future.delayed(Duration(seconds: 5),(() {
    print('dasun');
  }));

  print('other codes in getDataTwo method');

}

Future<void> getDataThree() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  await Future.delayed(Duration(seconds: 3),(() {
    print('d@gmail.com');
  }));

  // get bio data
  Future.delayed(Duration(seconds: 5),(() {
    print('dasun');
  }));

  print('other codes in getDataThree method');

}

Future<void> getDataFour() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  await Future.delayed(Duration(seconds: 3),(() {
    print('d@gmail.com');
  }));

  // get bio data
  await Future.delayed(Duration(seconds: 5),(() {
    print('dasun');
  }));

  print('other codes in getDataFour method');

}

Future<void> getDataFive() async {

  // get user email for get bio data.. if we need user email for get user bio data, we use await/asnyc 
  String email = await Future.delayed(Duration(seconds: 3),(() {
    return 'd@gmail.com';
  }));

  // get bio data
  String name = await Future.delayed(Duration(seconds: 5),(() {
    return 'dasun';
  }));
  
  print('Email -: $email , Name -: $name');
  print('other codes in getDataFive method');

}

