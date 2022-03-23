import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants.dart';
import 'modifier.model.dart';

part 'perk.model.freezed.dart';

@freezed
class Perk with _$Perk {
  factory Perk({
    required perk_action action,
    required Map<Modifier, int> modifierUpdates,
    @Default(1) int maxUses,
    @Default(0) int used,
    @Default('') String sideEffect,
  }) = _Perk;
}
