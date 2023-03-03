// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:gloomhaven_character_manager/config/config.module.dart' as _i5;
import 'package:gloomhaven_character_manager/config/config.service.dart' as _i3;
import 'package:gloomhaven_character_manager/jotl/items.dart' as _i4;
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
    final configModule = _$ConfigModule();
    await gh.factoryAsync<_i3.ConfigService>(
      () => configModule.configService,
      preResolve: true,
    );
    gh.factory<_i4.JOTLItemLoader>(
        () => _i4.JOTLItemLoader(gh<_i3.ConfigService>()));
    return this;
  }
}

class _$ConfigModule extends _i5.ConfigModule {}
