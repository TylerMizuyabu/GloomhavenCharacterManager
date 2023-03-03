import 'package:freezed_annotation/freezed_annotation.dart';

part 'config.model.freezed.dart';
part 'config.model.g.dart';

@freezed
class Config with _$Config {
  factory Config({required String jotlItemListFileLocation}) = _Config;

  factory Config.fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
}
