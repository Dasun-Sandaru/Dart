
// inheritance.dart --- Inheritance in Dart --- About Inheritance in Dart

// Inheritance

  // single Inheritance           A-->B
  // Multi-level Inheritance      C-->D-->E
  // Hierarchical Inheritance     F-->G,F-->H

void main(List<String> args) {
  
  // single Inheritance
  var objB = B();
  objB.display_b(); // Diaplay form B class : 20
  objB.display_a(); // Diaplay form A class : 10

  // Multi-level Inheritance
  var objE = E();
  objE.display_e(); // Diaplay form E class : 30
  objE.display_d(); // Diaplay form D class : 20
  objE.display_c(); // Diaplay form C class : 10

  // Hierarchical Inheritance
  var objG = G();
  var objH = H();
  objG.display_g(); // Diaplay form G class : 20
  objG.display_F(); // Diaplay form F class : 10

  objH.display_h(); // Diaplay form H class : 30
  objH.display_F(); // Diaplay form F class : 10

}

// single Inheritance ------------------------------
class A{

  var a = 10;

  void display_a(){
    print('Diaplay form A class : $a');
  }
}

class B extends A{

  var b = 20;

  void display_b(){
    print('Diaplay form B class : $b');
  }

}
// ---------------------------------------------------



// Multi-level Inheritance ---------------------------
class C{

  var c = 10;

  void display_c(){
    print('Diaplay form C class : $c');
  }
}

class D extends C{

  var d = 20;

  void display_d(){
    print('Diaplay form D class : $d');
  }

}

class E extends D{

  var e = 30;

  void display_e(){
    print('Diaplay form E class : $e');
  }
}
// ----------------------------------------------------


// Hierarchical Inheritance ---------------------------
class F{

  var f = 10;

  void display_F(){
    print('Diaplay form F class : $f');
  }
}

class G extends F{

  var g = 20;

  void display_g(){
    print('Diaplay form G class : $g');
  }

}

class H extends F{

  var h = 30;

  void display_h(){
    print('Diaplay form H class : $h');
  }
}
// ----------------------------------------------------