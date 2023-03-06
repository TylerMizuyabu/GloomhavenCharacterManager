import 'package:get_it/get_it.dart';
import 'package:gloomhaven_character_manager/app/asset_loader.dart';
import 'package:gloomhaven_character_manager/app/build_asset_loader.dart';
import 'package:gloomhaven_character_manager/app/character_builder.dart';
import 'package:gloomhaven_character_manager/app/character_service/character_service.dart';
import 'package:gloomhaven_character_manager/app/character_service/firestore_character_service.dart';
import 'package:gloomhaven_character_manager/app/config/config.service.dart';
import 'package:gloomhaven_character_manager/app/user_service/firebase_user_service.dart';
import 'package:gloomhaven_character_manager/app/user_service/user_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingletonAsync<ConfigService>(() => ConfigService.create('assets/config.json'));
  getIt.registerSingletonAsync<AssetLoader>(() => BuildAssetLoader.create(), dependsOn: [ConfigService]);
  getIt.registerSingletonAsync<UserService>(() async => FirebaseUserService());
  getIt.registerSingletonWithDependencies<CharacterService>(() => FirestoreCharacterService(), dependsOn: [UserService]);
  getIt.registerSingleton<CharacterBuilder>(CharacterBuilder());
}
