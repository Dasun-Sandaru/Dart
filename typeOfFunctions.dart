

// typeOfFunctions.dart--- Types of Functions in Dart --- About Types of Functions in Dart

// #1. no arguments and no return type
// #2. with arguments and no return type
// #3. no arguments and with return type
// #4. with arguments and with return type

void main(List<String> args) {
  
  // call functions
  addition();
  subtraction(17, 12);
  print(mod());
  print(multiplication(12, 5));
}

// #1. no arguments and no return type
void addition(){
  int a=10,b=20;
  print(a+b);
}

// #2. with arguments and no return type
void subtraction(int a,int b){
  int ans = a-b;
  print(ans);
}

// #3. no arguments and with return type
int mod(){
  int a=12,b=5;
  int ans = a%b;
  return ans;
}

// #4. with arguments and with return type
int multiplication(int a,int b){
  int ans = a*b;
  return ans;
}
