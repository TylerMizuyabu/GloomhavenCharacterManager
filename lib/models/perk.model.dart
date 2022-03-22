import 'package:freezed_annotation/freezed_annotation.dart';

import 'constants.dart';

part 'perk.model.freezed.dart';

@freezed
class Perk with _$Perk {
  factory Perk(
      {required perk_action action,
      required String target,
      @Default('') String modification,
      @Default(1) int maxUses,
      @Default(0) int used}) = _Perk;
}
