import 'package:get_it/get_it.dart';
import 'package:gloomhaven_character_manager/app/asset_loader.dart';
import 'package:gloomhaven_character_manager/app/build_asset_loader.dart';
import 'package:gloomhaven_character_manager/app/character_builder.dart';
import 'package:gloomhaven_character_manager/app/config/config.service.dart';

final GetIt getIt = GetIt.instance();

void setup() async {
  getIt.registerSingletonAsync<ConfigService>(() => ConfigService.create('assets/config.json'));
  getIt.registerSingletonAsync<AssetLoader>(() => BuildAssetLoader.create(), dependsOn: [ConfigService]);
  getIt.registerSingleton<CharacterBuilder>(CharacterBuilder());
}
