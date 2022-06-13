
// function.dart --- Functions in Dart -- About Functions in Dart

// syntax: function

  // return_type function_name(parameter_list){

  //     //statement
  //     return value;
  // }

void main(List<String> args) {

  // call to method
  print(add(10, 30));

  sub(17, 5);
  
}

int add(int a,int b){
  int c;
  c = a+b;
  return c;
}

void sub(int a,int b){
  int c;
  c = a-b;
  print(c);
}