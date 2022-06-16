



// Encapsulation

// Encapsulation is :: variables --> protect


void main(){

  Student st1 = new Student();

  // ---------------------- Error ------------------
  // st1.id = 1;
  // st1.name ="Dasun";
  // st1.age = 23;
  // ---------------------- Error ------------------
  // -------- Therefor Make Getter & Setter --------

  /* 
  
  return_type get field_name{
    ...
  }
  
  set field_name(variable_type variable){
    ...
  }
  
  */

  Student st2 = new Student();
  st2.setId(5);
  print(st2.getId());



  // Creating Instance of class
  Gfg geek = Gfg();
 
  // Calling the set_name method(setter method we created)
  // To set the value in Property "geekName"
  geek.setName = "GeeksForGeeks";
 
  // Calling the get_name method(getter method we created)
  // To get the value from Property "geekName"
  print("Welcome to ${geek.getName}");

}

class Student{

  int? _id;
  String? _name;
  int? _age;

  String lastName = "";

  // -------- Make Getter & Setter --------

  void setId(int id){
    this._id = id;
  }

  int? getId(){
    return _id;
  }


}


// Creating Class named Gfg
class Gfg {
  // Creating a Field/Property
  late String _geekName;

  // Creating the setter method
  // to set the input in Field/Property
  set setName(String name) {
    _geekName = name;
  }
 
  // Creating the getter method
  // to get input from Field/Property
  String get getName {
    return _geekName;
  }
 
  
}
 
