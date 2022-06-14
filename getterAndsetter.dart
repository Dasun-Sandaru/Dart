

// getterAndsetter.dart--- Getter and Setter in Dart --- About Getter and Setter in Dart

void main(List<String> args) {
  
  var objA = A();

  objA.a = 23;   // default setter
  print(objA.a); // default getter

  var obja = A();

  obja.setName = 'Dasun'; // custom setter
  print(obja.getName);    // custom getter
}

class A{

  var a;

  var name;

  void set setName(var name){
    this.name = name;
  }

  String get getName{
    return name;
  }

}