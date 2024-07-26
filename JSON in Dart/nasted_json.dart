class NastedJson{

  static const myJsonA = {
    "name": "Dasun",
    "age": 26,
    "city": "Galle",
  };

  static const myJsonB = {
    "name": "Dasun",
    "age": 26,
    "city": "Galle",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    },
  };


  static const myJsonC = {
    "name": "Dasun",
    "age": 26,
    "city": "Galle",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    },
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    }
  };

  static const myJsonD = {
    "name": "Dasun",
    "age": 26,
    "city": "Galle",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    },
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "players": [
      {
        "id": 3,
        "name": "Player 3"
      },
      {
        "id": 4,
        "name": "Player 4"
      }
    ]
  };


  static const myJsonE = {
    "tournament": {
      "name": "World Cup",
      "year": 2024,
      "teams": [
        {
          "name": "Team A",
          "players": [
            {
              "id": 1,
              "name": "Player 1"
            },
            {
              "id": 2,
              "name": "Player 2"
            }
          ]
        },
        {
          "name": "Team B",
          "players": [
            {
              "id": 3,
              "name": "Player 3"
            }
          ]
        }
      ]
    }
  };

  static const myJsonF = {
  "tournament": {
    "name": "Premier League",
    "year": 2024,
    "location": "London",
    "teams": [
      {
        "id": 1,
        "name": "Team A",
        "players": [
          {
            "id": 101,
            "name": "Player 1",
            "role": "Batsman",
            "statistics": {
              "matches": 10,
              "runs": 450,
              "average": 45.0
            }
          },
          {
            "id": 102,
            "name": "Player 2",
            "role": null, // "Bowler"
            "statistics": {
              "matches": 10,
              "wickets": 25,
              "average": 20.0
            }
          }
        ]
      },
      {
        "id": 2,
        "name": "Team B",
        "players": [
          {
            "id": 103,
            "name": "Player 3",
            "role": "All-Rounder",
            "statistics": {
              "matches": 10,
              "runs": 300,
              "wickets": 15,
              "average": 30.0
            }
          }
        ]
      },
      // null
      // {}
    ],
    "matches": [
      {
        "id": 201,
        "date": "2024-08-01",
        "team1": "Team A",
        "team2": "Team B",
        "venue": "Stadium 1",
        "result": "Team A won by 20 runs"
      }
    ]
    }
  };
}