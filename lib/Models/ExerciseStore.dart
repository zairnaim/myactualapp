import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_flux/flutter_flux.dart';

class WorkoutModel{

  final String workoutname;

  String get getworkoutname => workoutname;

  WorkoutModel({
    this.workoutname
    });
  
  
}

class CoinRepo {
  Future<Stream<WorkoutModel>> getCoins() async {
     String url = "https://api.coinmarketcap.com/v1/ticker/";

     var client = http.Client();
     var streamedRes = await client.send(http.Request('get', Uri.parse(url)));

    return streamedRes.stream
        .transform(utf8.decoder)
        .transform(json.decoder)
        .expand((body) => (body as List))
        .map((json) => WorkoutModel());
  }
}

class ExerciseStore extends Store {
  final repo = CoinRepo();

  final List<WorkoutModel> _coins = <WorkoutModel>[];

  List<WorkoutModel> get coins => List<WorkoutModel>.unmodifiable(_coins);

  CoinStore() {
    triggerOnAction(loadCoinsAction, (nothing) async {
      var stream = await repo.getCoins();
      if (_coins.isEmpty) {
        stream.listen((coin) => _coins.add(coin));
      } else {
        _coins.clear();
        stream.listen((coin) => _coins.add(coin));
      }
    });
  }
}

final Action loadCoinsAction = Action();
