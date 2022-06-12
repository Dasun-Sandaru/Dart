

// valueConversion - Default value and Type Conversion in Dart | String to int | String to double | int to String --Add valueConversion - About - Default value and Type Conversion in Dart

void main() {

  var a;
  print(a); // --> null

  //int To String
  String b = 50.toString();
  print(b); // --> 50
  print(b.runtimeType); // String

  int c = 45;
  String d = c.toString();
  print(d.runtimeType);

  //double To String
  double e = 69.96;
  String f = e.toString();
  print(f.runtimeType);

  //String To int
  String g = "34";
  int h = int.parse(g);
  print(h.runtimeType);

  //String To Double
  String i = "69.96";
  double j = double.parse(i);
  print(j.runtimeType);

}