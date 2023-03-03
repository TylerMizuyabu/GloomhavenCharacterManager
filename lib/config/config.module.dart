import 'package:gloomhaven_character_manager/config/config.service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ConfigModule {
  @preResolve
  Future<ConfigService> get configService async => await FileSystemConfigService.create();
}
