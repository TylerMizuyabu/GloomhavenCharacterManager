import 'package:gloomhaven_character_manager/config/config.service.dart';
import 'package:gloomhaven_character_manager/asset_loader.dart';
import 'package:gloomhaven_character_manager/build_source/build_asset_loader.dart';
import 'package:injectable/injectable.dart';

@module
abstract class BuildSourceModule {
  @preResolve
  Future<ConfigService> get configService => ConfigService.create("assets/config.json");

  @Singleton(as: AssetLoader)
  BuildAssetLoader get assetLoader;
}
