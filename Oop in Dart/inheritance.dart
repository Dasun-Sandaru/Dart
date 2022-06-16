

// - Inheritance


void main(){

  NewPhone np1 = new NewPhone();
  np1.sms();
  np1.call();

  np1.music();
  np1.video();
  np1.camera();

  print(np1.brand);
  print(np1.model);

  //Print super class private verilabe value
  //print(np1._contactCount);
}


class OldPhone{

  String brand = 'samsung';
  String model = 'm12';

  //private int contactCount = 0; // Error: private access modifier not available
  //If need private access modifier
  int _contactCount = 47;

  void sms(){
    print("Send an sms form OldPhone class - (Super Class)");
  }

  void call(){
    print("Make a call form OldPhone class - (Super Class)");
  }

}

class NewPhone extends OldPhone{

  int? wifi;
  int? betteyLevel;

  void music(){
    print("Play a song form NewPhone class - (Sub Class)");
  }

  void video(){
    print("Play a video form NewPhone class - (Sub Class)");
  }

  void camera(){
    print("Get a pic form NewPhone class - (Sub Class)");
  }

  void displayOldPhoneDetails(){
    
  }

}