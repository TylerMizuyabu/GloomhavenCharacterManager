//Pics used to grab items from https://imgur.com/gallery/3H4KiFU
//Confirm with hubert to make sure these are in order

import 'dart:convert';
import 'dart:io';

import 'package:gloomhaven_character_manager/config/config.service.dart';
import 'package:gloomhaven_character_manager/models/item.model.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class JOTLItemLoader {
  late final String itemFileLocation;
  JOTLItemLoader(ConfigService service) {
    itemFileLocation = service.config.jotlItemListFileLocation;
  }

  Future<List<Item>> get items async {
    Iterable itemJsons = jsonDecode(await File(itemFileLocation).readAsString());
    return itemJsons.map((json) => Item.fromJson(json)).toList();
  }
}
