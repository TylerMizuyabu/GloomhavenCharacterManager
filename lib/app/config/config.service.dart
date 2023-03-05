import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:gloomhaven_character_manager/app/config/config.model.dart';

class ConfigService {
  late Config _config;

  ConfigService._create(String jsonString) {
    _config = Config.fromJson(jsonDecode(jsonString));
  }

  static Future<ConfigService> create(String file) async {
    final config = await rootBundle.loadString(file);
    return ConfigService._create(config);
  }

  Config get config => _config;
}
