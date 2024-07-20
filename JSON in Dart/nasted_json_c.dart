import 'nasted_json.dart';

class MyJsonC {
  String? name;
  int? age;
  String? city;
  Company? compnany;
  Address? address;

  MyJsonC({this.name, this.age, this.city, this.compnany, this.address});

  MyJsonC.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
    compnany =
        json['company'] == null ? null : Company.fromJson(json['company']);
    address =
        json['address'] == null ? null : Address.fromJson(json['address']);
  }

  // @override
  // String toString() {
  //   return 'MyJsonC{name: $name, age: $age, city: $city, company: $compnany, address: $address}';
  // }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  Company.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    catchPhrase = json['catchPhrase'];
    bs = json['bs'];
  }

  // @override
  // String toString() {
  //   return 'Company{name: $name, catchPhrase: $catchPhrase, bs: $bs}';
  // }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.geo});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    suite = json['suite'];
    city = json['city'];
    zipcode = json['zipcode'];
    geo = json['geo'] == null ? null : Geo.fromJson(json['geo']);
  }

  // @override
  // String toString() {
  //   return 'Address{street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo}';
  // }
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  // @override
  // String toString() {
  //   return 'Geo{lat: $lat, lng: $lng}';
  // }
}

void main(List<String> args) {
  MyJsonC obj = MyJsonC.fromJson(NastedJson.myJsonC);
  //print(obj); // Instance of 'MyJsonC'

  //print(obj.compnany); // Instance of 'Company'
  //print(obj.address); // Instance of 'Address'

  //print(obj.compnany?.catchPhrase); // Multi-layered client-server neural-net
  print(obj.address!.geo!.lat); // -37.3159
}
