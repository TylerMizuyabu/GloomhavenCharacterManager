// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gloomhaven_character_manager/asset_loader.dart' as _i4;
import 'package:gloomhaven_character_manager/build_source/build_asset_loader.dart'
    as _i5;
import 'package:gloomhaven_character_manager/build_source/build_source.module.dart'
    as _i6;
import 'package:gloomhaven_character_manager/config/config.service.dart' as _i3;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final buildSourceModule = _$BuildSourceModule(this);
    await gh.factoryAsync<_i3.ConfigService>(
      () => buildSourceModule.configService,
      preResolve: true,
    );
    gh.singleton<_i4.AssetLoader>(buildSourceModule.assetLoader);
    gh.factory<_i5.BuildAssetLoader>(
        () => _i5.BuildAssetLoader(gh<_i3.ConfigService>()));
    return this;
  }
}

class _$BuildSourceModule extends _i6.BuildSourceModule {
  _$BuildSourceModule(this._getIt);

  final _i1.GetIt _getIt;

  @override
  _i5.BuildAssetLoader get assetLoader =>
      _i5.BuildAssetLoader(_getIt<_i3.ConfigService>());
}
