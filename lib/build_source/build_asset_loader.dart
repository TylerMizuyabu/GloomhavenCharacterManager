//Pics used to grab items from https://imgur.com/gallery/3H4KiFU
//Confirm with hubert to make sure these are in order

import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/services.dart' show rootBundle;
import 'package:gloomhaven_character_manager/config/config.service.dart';
import 'package:gloomhaven_character_manager/asset_loader.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';
import 'package:gloomhaven_character_manager/models/item.model.dart';
import 'package:gloomhaven_character_manager/models/perk.model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class BuildAssetLoader implements AssetLoader {
  List<Item> _items = [];
  Map<CharacterClass, List<Perk>> _perks = {};
  late final String itemsFilePath;
  late final String perksFilePath;

  BuildAssetLoader(ConfigService service) {
    itemsFilePath = service.config.itemsFileLocation;
    perksFilePath = service.config.perksFileLocation;
  }

  @override
  Future<List<Item>> get items async {
    if (_items.isEmpty) {
      final unparsed = await rootBundle.loadString(itemsFilePath);
      final items = await Isolate.run(() => _parseItems(unparsed));
      _items = items;
      return items;
    }
    return _items;
  }

  Future<List<Item>> _parseItems(String unparsedItems) async {
    Iterable itemJsons = jsonDecode(unparsedItems);
    return itemJsons.map((item) => Item.fromJson(item)).toList();
  }

  @override
  Future<Map<CharacterClass, List<Perk>>> get perks async {
    if (_perks.isEmpty) {
      String unparsed = await rootBundle.loadString(perksFilePath);
      _perks = await Isolate.run(() => _parsePerks(unparsed));
    }
    return _perks;
  }

  Future<Map<CharacterClass, List<Perk>>> _parsePerks(String unparsedPerks) async {
    Map<CharacterClass, Iterable<Map<String, dynamic>>> perksJsons = jsonDecode(unparsedPerks);
    return perksJsons.map((key, value) => MapEntry(key, value.map((perk) => Perk.fromJson(perk)).toList()));
  }
}
