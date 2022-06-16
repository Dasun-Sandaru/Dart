



class OldPhone{

  String? brand;
  String? name;

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