import 'dart:convert';
import 'dart:io';

import 'package:gloomhaven_character_manager/config/config.model.dart';

abstract class ConfigService {
  Config get config;
}

class FileSystemConfigService implements ConfigService {
  late Config _config;

  FileSystemConfigService._create(String jsonString) {
    _config = Config.fromJson(jsonDecode(jsonString));
  }

  static Future<FileSystemConfigService> create() async {
    final configFile = File('config.json');
    return FileSystemConfigService._create(await configFile.readAsString());
  }

  @override
  Config get config => _config;
}
