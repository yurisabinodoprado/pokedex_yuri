import 'package:flutter/material.dart';
import '../helpers/poke_helper.dart';
import '../models/pokemon_model.dart';

class DetailController {
  PokemonModel? _pokemon;

  void setPokemon(value) => _pokemon = value;

  String get id => '#${_pokemon!.id.toString().padLeft(4, '0')}';
  String get name => _pokemon!.name;
  Color get primaryColor => PokeHelper.getColor(_pokemon!.type1);
  num get weight => _pokemon!.height / 10;
  num get height => _pokemon!.height / 10;
  int get health => _pokemon!.health;
  int get attack => _pokemon!.attack;
  int get defense => _pokemon!.defense;
  int get speed => _pokemon!.speed;
  int get baseExperience => _pokemon!.baseExperience;
  String get imageUrl => _pokemon!.imageUrl;
  List<String?> get types {
    var list = [_pokemon!.type1];
    if (_pokemon!.type2 != null) list.add(_pokemon!.type2!);
    return list;
  }
}
