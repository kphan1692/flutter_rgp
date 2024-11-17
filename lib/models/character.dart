import 'package:flutter_rpg/models/Stats.dart';

class Character with Stats {
  //fields
  final String name;
  final String slogan;
  final String id;
  bool _isFav = false;

  //constructor
  Character({required this.name, required this.slogan, required this.id});

//getters

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}
