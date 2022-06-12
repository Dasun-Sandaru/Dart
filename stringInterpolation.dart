

// stringInterpolation -- Strings and String Interpolation in Dart -- About Strings and String Interpolation in Dart

void main(List<String> args) {
  
  String a = 'apple';
  String b = "apple";

  print(a);
  print(b);

  // Concatenation operator = +

  String myname = 'Dasun';
  print('my name is ' + myname);

  // String Interpolation
  // $variableName
  // ${expression}

  print('my name is $myname'); // --> my name is Dasun
  print('string size is ${a.length}'); // --> my name is 5

}