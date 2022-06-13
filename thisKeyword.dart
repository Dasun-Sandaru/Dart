
// thisKeyword.dart --- This Keyword in Dart --- About This Keyword in Dart


void main(List<String> args) {
  
  var objA = A();
  objA.display1(199, 200); 
    // x = 199 
    // y =200

  objA.display2(199, 200);
    // x = 10 
    // y =20

}

class A{

  int x = 10;
  int y = 20;

  void display1(int x,int y){
    print('x = $x \n y =$y');
  }

  void display2(int x,int y){

    x = this.x;
    y = this.y;

    print('x = $x \n y =$y');
  }
  
}
