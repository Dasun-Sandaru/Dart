
// - Method Overriding - Super Keyword



// Method Over Riding & Super key word

//Super Key Word
//--1. Sub class constuecter එකේ ඉදන් Super Class එකේ consturcter එක Call කරන්න
//--2. Overriding වුන metnod එකක Sub Class එකේ Method එක ඇතුලෙදි call කරන්න

void main(){

  Man m1 = new Man();
  m1.climb();

}


class  Monkey{

  int leds = 4;

  Monkey(){
    print("This is Super class consturcter");
  }

  void climb(){
    print("Jumping from branch to branch and climbing a tree --- Monkey (Super Class)");
  }
}


class Man extends Monkey{

  Man(){
    print("This is Sub class constratur");
    
  }

  @override
  void climb(){
    print("Climb a tree using a ladder --- Man (Sub Class)");

    print("Try to call super class climb method from sub class method >>> ");
    super.climb();

    print(super.leds);
  }
}