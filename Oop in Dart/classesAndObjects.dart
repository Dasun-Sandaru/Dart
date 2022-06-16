

// - Classes and Objects - Super Keyword

void main(){

  Car c1 = new Car("Red",4,4);
  c1.drive();
  c1.reverse();
  c1.park();

  print(c1.color);

  var c2 = Car("Yellow", 2, 2);
  print(c2.color);
  print(c2.seats);
  print(c2.doors);

  c2.drive();
  c2.reverse();
  c2.park();

}

class Car{

  String? color;
  int? seats;
  int? doors;

  // Car(String color,int seats,int doors){
  //   this.color = color;
  //   this.seats = seats;
  //   this.doors = doors;
  // }
  // This constructor is also work

  Car(this.color,this.seats,this.doors);

  void drive(){
    print("Car is driving");
  }

  void reverse(){
    print("Car is reversing");
  }

  void park(){
    print("Car is parking");
  }

}