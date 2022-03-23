import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants.dart';
import 'modifier.model.dart';

part 'perk.model.freezed.dart';

@freezed
class Perk with _$Perk {
  factory Perk(
      {required perk_action action,
      required Modifier mod_1,
      @Default(1) int mod1Quantity,
      Modifier? mod_2,
      int? mod2Quantity,
      @Default(1) int maxUses,
      @Default(0) int used}) = _Perk;
}
