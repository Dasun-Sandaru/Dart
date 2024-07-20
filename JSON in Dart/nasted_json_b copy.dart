var myMapA = {
  "name": "Dasun",
  "age": 26,
  "city": "Galle",
  "address": [
    {"line1": "no 01", "line2": "koggala"},
    {"line1": "no 02", "line2": "habaraduwa"},
  ]
};

// create model class for the myMapA

class AMap {
  String? name;
  int? age;
  String? city;
  List<Address>? address;

  AMap({this.name, this.age, this.city, this.address});

  AMap.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];

    if (json['address'] != null) {
      address = [];
      (json['address'] as List).forEach((e) {
        address!.add(Address.fromJson(e));
      });
    }
  }
}

// need create new classes for each map
// so now create new class for address[]
// becouse that[] has maps

class Address {
  String? line1;
  String? line2;

  Address({this.line1, this.line2});

  Address.fromJson(Map<String, dynamic> json) {
    line1 = json['line1'];
    line2 = json['line2'];
  }
}

void main(List<String> args) {
  var obj = AMap.fromJson(myMapA);
  //print(obj.name); // Dasun
  //print(obj.age); // 26
  //print(obj.city); // Galle

  print(obj.address);
  // [Instance of 'Address', Instance of 'Address']

  var myAddress = obj.address;
  myAddress!.map((e) {
    print(e.line1);
  }).toList();
  //no 01
  //no 02
}
