
// fatArrowNotation.dart --- Shorthand Syntax Expression | Fat Arrow Notation  --- About Shorthand Syntax Expression | Fat Arrow Notation


void main(List<String> args) {
  
  // call function
  print(sum1(12, 5));

  print(sum2(12, 5));

}

int sum1(int a,int b){
  return a+b;
}

// If we use Fat Arrow Notation,

int sum2(int a,int b) => a+b;