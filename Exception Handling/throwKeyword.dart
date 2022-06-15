
// throwKeyword.dart --- Throw Keyword in Dart --- About Throw Keyword in Dart

// #5. create our own Custom Exception

void main(List<String> args) {
  
  try{

    // call method
    noCheck(12345); // --> Valid pin

    noCheck(1369); // -->  Enter a 5 digit pin

  }catch (e){
    print('Enter a 5 digit pin');
  }
}

void noCheck(var n){

  if(n.toString().length == 5){
    print('Valid pin');
  }else{
    throw FormatException();
  }

}