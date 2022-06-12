

// ifElse.dart-- If else Statement in Dart | Nested if else Statemen -- About If else Statement in Dart - Nested if else Statemen

// syntax: If else Statement

  // if(test expression){
      // statement
  // }else{
      // statement
  // }

// syntax: Nested if else Statement

  // if(expression){
  //   // statement
  // }else if(expression){
  //   // statement
  // }else if(expression){
  //   // statement
  // }else{
  //   // statement
  // }

void main(List<String> args) {
  
  int a = 30;

  // If else Statement
  if (a==10) {
    print(10);
  }
  else {
    print(false);
  }

  // Nested if else Statement
  if (a<10) {
    print('less than 10');
  }
  else if(a<20){
    print('less than 20');
  }
  else if(a<30){
    print('less than 30');
  }
  else {
    print('grater than 30');
  }


  int b = 1;

  //Ternary Operator
  (b<3) ? print('value is less than 3') : print('getaer than 3');
}