import 'nasted_json.dart';

class MyJsonC {
  String? name;
  int? age;
  String? city;
  Company? compnany;
  Address? address;
  List<Player>? player;

  MyJsonC(
      {this.name,
      this.age,
      this.city,
      this.compnany,
      this.address,
      this.player});

  MyJsonC.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
    compnany =
        json['company'] == null ? null : Company.fromJson(json['company']);
    address =
        json['address'] == null ? null : Address.fromJson(json['address']);

    player = json['players'] == null
        ? null
        : List<Player>.from(
            json['players']!.map(
              (e) => Player.fromJson(e),
            ),
          );
  }
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
}

class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  Geo.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }
}

class Player {
  int? id;
  String? name;

  Player({this.id, this.name});

  Player.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}

void main(List<String> args) {
  MyJsonC obj = MyJsonC.fromJson(NastedJson.myJsonD);
  print(obj.address!.geo!.lat); // -37.3159

  print(obj.player); // [Instance of 'Player', Instance of 'Player']
  //----------------------------------------------------------------

  (obj.player as List).forEach((e) {
    print(e);
  });
  // Instance of 'Player'
  // Instance of 'Player'
  //----------------------------------------------------------------

  (obj.player as List).forEach((e) {
    print(e.name);
  });

  // Player 3
  // Player 4
  //----------------------------------------------------------------
}
