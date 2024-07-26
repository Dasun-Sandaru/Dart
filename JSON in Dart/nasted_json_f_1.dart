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

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      name: json['name'],
      year: json['year'],
      location: json['location'],
      teams: (json['teams'] as List).map((i) => Team.fromJson(i)).toList(),
      matches: (json['matches'] as List).map((i) => Match.fromJson(i)).toList(),
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'name': name,
  //     'year': year,
  //     'location': location,
  //     'teams': teams.map((i) => i.toJson()).toList(),
  //     'matches': matches.map((i) => i.toJson()).toList(),
  //   };
  // }
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

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      players:
          (json['players'] as List).map((i) => Player.fromJson(i)).toList(),
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'players': players.map((i) => i.toJson()).toList(),
  //   };
  // }
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

  factory Player.fromJson(Map<String, dynamic> json) {
    return Player(
      id: json['id'],
      name: json['name'],
      role: json['role'],
      statistics: Statistics.fromJson(json['statistics']),
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'role': role,
  //     'statistics': statistics!.toJson(),
  //   };
  // }
}

class Statistics {
  int? matches;
  int? runs;
  int? average;
  final int? wickets;

  Statistics({
    this.matches,
    this.runs,
    this.average,
    this.wickets,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
      matches: json['matches'],
      runs: json['runs'],
      average: json['average'],
      wickets: json['wickets'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'matches': matches,
  //     'runs': runs,
  //     'average': average,
  //     'wickets': wickets,
  //   };
  // }
}

class Match {
  int? id;
  String? date;
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

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      id: json['id'],
      date: json['date'],
      team1: json['team1'],
      team2: json['team2'],
      venue: json['venue'],
      result: json['result'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'date': date,
      'team1': team1,
      'team2': team2,
      'venue': venue,
      'result': result,
    };
  }
}
