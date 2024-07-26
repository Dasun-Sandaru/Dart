// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'nasted_json.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Tournament? tournament;

  Welcome({
    this.tournament,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        tournament: json["tournament"] == null
            ? null
            : Tournament.fromJson(json["tournament"]),
      );

  Map<String, dynamic> toJson() => {
        "tournament": tournament?.toJson(),
      };
}

class Tournament {
  String? name;
  int? year;
  String? location;
  List<Team>? teams;
  List<Match>? matches;

  Tournament({
    this.name,
    this.year,
    this.location,
    this.teams,
    this.matches,
  });

  factory Tournament.fromJson(Map<String, dynamic> json) => Tournament(
        name: json["name"],
        year: json["year"],
        location: json["location"],
        teams: json["teams"] == null
            ? []
            : List<Team>.from(json["teams"]!.map((x) => Team.fromJson(x))),
        matches: json["matches"] == null
            ? []
            : List<Match>.from(json["matches"]!.map((x) => Match.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "year": year,
        "location": location,
        "teams": teams == null
            ? []
            : List<dynamic>.from(teams!.map((x) => x.toJson())),
        "matches": matches == null
            ? []
            : List<dynamic>.from(matches!.map((x) => x.toJson())),
      };
}

class Match {
  int? id;
  DateTime? date;
  String? team1;
  String? team2;
  String? venue;
  String? result;

  Match({
    this.id,
    this.date,
    this.team1,
    this.team2,
    this.venue,
    this.result,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
        id: json["id"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        team1: json["team1"],
        team2: json["team2"],
        venue: json["venue"],
        result: json["result"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "team1": team1,
        "team2": team2,
        "venue": venue,
        "result": result,
      };
}

class Team {
  int? id;
  String? name;
  List<Player>? players;

  Team({
    this.id,
    this.name,
    this.players,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"],
        name: json["name"],
        players: json["players"] == null
            ? []
            : List<Player>.from(
                json["players"]!.map((x) => Player.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "players": players == null
            ? []
            : List<dynamic>.from(players!.map((x) => x.toJson())),
      };
}

class Player {
  int? id;
  String? name;
  String? role;
  Statistics? statistics;

  Player({
    this.id,
    this.name,
    this.role,
    this.statistics,
  });

  factory Player.fromJson(Map<String, dynamic> json) => Player(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        statistics: json["statistics"] == null
            ? null
            : Statistics.fromJson(json["statistics"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "role": role,
        "statistics": statistics?.toJson(),
      };
}

class Statistics {
  int? matches;
  int? runs;
  double? average;
  int? wickets;

  Statistics({
    this.matches,
    this.runs,
    this.average,
    this.wickets,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
        matches: json["matches"],
        runs: json["runs"],
        average: json["average"],
        wickets: json["wickets"],
      );

  Map<String, dynamic> toJson() => {
        "matches": matches,
        "runs": runs,
        "average": average,
        "wickets": wickets,
      };
}

void main(List<String> args) {
  int temMatches = 0;
  String temRole1;
  String temRole2;
  Welcome obj = Welcome.fromJson(NastedJson.myJsonF);
  // temMatches = obj.tournament!.teams![0].players![0].statistics!.matches!;// 10
  temMatches =
      obj.tournament?.teams![0].players?[0].statistics?.matches ?? 0; // 10
  temRole1 = obj.tournament!.teams![0].players![0].role ?? 'unknown';
  temRole2 = obj.tournament!.teams![0].players![1].role ?? 'unknown';
  print(temMatches);
  print(temRole1); // Batsman
  print(temRole2); // unknown
}
