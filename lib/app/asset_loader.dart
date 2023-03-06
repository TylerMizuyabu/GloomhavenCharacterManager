//Pics used to grab items from https://imgur.com/gallery/3H4KiFU
//Confirm with hubert to make sure these are in order

import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/item.model.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';

abstract class AssetLoader {
  Future<List<Item>> get items;

  Future<Map<CharacterClass, List<Perk>>> get perks;
}
