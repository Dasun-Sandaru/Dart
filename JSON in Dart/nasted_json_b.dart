import 'nasted_json.dart';

class MyJsonB {
  String? name;
  int? age;
  String? city;
  Company? company;

  MyJsonB({this.name, this.age, this.city, this.company});

  MyJsonB.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
    company =
        json['company'] == null ? null : Company.fromJson(json['company']);
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

void main(List<String> args) {
  //print(NastedJson.myJsonB['company']);
  // {name: Romaguera-Crona, catchPhrase: Multi-layered client-server neural-net, bs: harness real-time e-markets}

  //print(NastedJson.myJsonB['company']['catchPhrase']);
  // Error

  var obj = MyJsonB.fromJson(NastedJson.myJsonB);
  // print(obj.company);
  // Instance of 'Company'

  //print(obj.company.catchPhrase);
  /* The property 'catchPhrase' can't be unconditionally accessed because the receiver can be 'null'.
  Try making the access conditional (using '?.') or adding a null check to the target ('!') */

  // when we sure this time catchPhrase is not null
  print(obj.company!.catchPhrase);
  // Multi-layered client-server neural-net
  print(obj.company?.catchPhrase);
  // Multi-layered client-server neural-net

  // when we sure this time catchPhrase is can be null
  print(obj.company!.catchPhrase);
  print(obj.company?.catchPhrase);
  // null
  // null
}
