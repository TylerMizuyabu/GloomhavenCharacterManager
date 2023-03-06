//Pics used to grab items from https://imgur.com/gallery/3H4KiFU
//Confirm with hubert to make sure these are in order

import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:gloomhaven_utility/app/config/config.service.dart';
import 'package:gloomhaven_utility/app/asset_loader.dart';
import 'package:gloomhaven_utility/injection.dart';
import 'package:gloomhaven_utility/models/constants.dart';
import 'package:gloomhaven_utility/models/item.model.dart';
import 'package:gloomhaven_utility/models/perk.model.dart';

class BuildAssetLoader extends ChangeNotifier implements AssetLoader {
  List<Item> _items = [];
  Map<CharacterClass, List<Perk>> _perks = {};
  late final String itemsFilePath;
  late final String perksFilePath;

  BuildAssetLoader._buildAssetLoader(ConfigService service) {
    itemsFilePath = service.config.itemsFileLocation;
    perksFilePath = service.config.perksFileLocation;
  }

  static Future<AssetLoader> create() async {
    final configService = await getIt.getAsync<ConfigService>();
    return BuildAssetLoader._buildAssetLoader(configService);
  }

  @override
  Future<List<Item>> get items async {
    if (_items.isEmpty) {
      final unparsed = await rootBundle.loadString(itemsFilePath);
      _items = await Isolate.run(() => _parseItems(unparsed));
      notifyListeners();
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
      notifyListeners();
    }
    return _perks;
  }

  Future<Map<CharacterClass, List<Perk>>> _parsePerks(String unparsedPerks) async {
    Map<CharacterClass, Iterable<Map<String, dynamic>>> perksJsons = jsonDecode(unparsedPerks);
    return perksJsons.map((key, value) => MapEntry(key, value.map((perk) => Perk.fromJson(perk)).toList()));
  }
}
