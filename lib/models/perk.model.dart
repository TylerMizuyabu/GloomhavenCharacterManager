import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gloomhaven_character_manager/models/modifier_update.model.dart';
import 'package:gloomhaven_character_manager/models/constants.dart';

part 'perk.model.freezed.dart';
part 'perk.model.g.dart';

@freezed
class Perk with _$Perk {
  factory Perk({
    required perk_action action,
    required List<ModifierUpdate> modifierUpdates,
    @Default(1) int maxUses,
    @Default(0) int used,
    @Default('') String sideEffect,
  }) = _Perk;

  factory Perk.fromJson(Map<String, dynamic> json) => _$PerkFromJson(json);
}
