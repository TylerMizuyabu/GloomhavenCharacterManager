import 'package:freezed_annotation/freezed_annotation.dart';

import 'modifier.model.dart';

part 'modifier_update.model.freezed.dart';
part 'modifier_update.model.g.dart';

@freezed
class ModifierUpdate with _$ModifierUpdate {
  factory ModifierUpdate({
    required Modifier modifier,
    required int change,
  }) = _ModifierUpdate;

  factory ModifierUpdate.fromJson(Map<String, dynamic> json) =>
      _$ModifierUpdateFromJson(json);
}
