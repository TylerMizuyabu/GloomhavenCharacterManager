import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.model.freezed.dart';

@freezed
class Item with _$Item {
  factory Item({required String name, required int id, @Default(1) int cost}) =
      _Item;
}
