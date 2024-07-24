import 'nasted_json.dart';

class MyJsonE {
  Tournament? tournament;

  MyJsonE({this.tournament});

  MyJsonE.fromJson(Map<String, dynamic> json) {
    tournament = json['tournament'];
  }
}

class Tournament {
  String? name;
  int? year;
  List<Team>? teams;

  Tournament({this.name, this.year, this.teams});

  Tournament.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    year = json['year'];
    teams = json['teams'] == null
        ? null
        : List<Team>.from(
            json['teams']!.map(
              (e) {
                Player.fromJson(e);
              },
            ),
          );
  }
}

class Team {
  String? name;
  List<Player>? players;

  Team({this.name, this.players});

  Team.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    players = json['players'] == null
        ? null
        : List<Player>.from(
            json['players']!.map(
              (e) {
                Player.fromJson(e);
              },
            ),
          );
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
  MyJsonE obj = MyJsonE.fromJson(NastedJson.myJsonE);

  print(obj);
}
