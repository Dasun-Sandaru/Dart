



import 'NewPhone.dart';

void main(){

  NewPhone np1 = new NewPhone();
  np1.sms();
  np1.call();

  np1.music();
  np1.video();
  np1.camera();

  //Print super class private verilabe value

  //print(np1._contactCount); // can't use private veriable in extends class
  
  /*The getter '_contactCount' isn't defined for the type 'NewPhone'.
  Try importing the library that defines '_contactCount', correcting the name to the name of an existing getter, or defining a getter or field named '_contactCount'*/

}