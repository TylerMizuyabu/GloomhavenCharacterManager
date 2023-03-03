// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'perk.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Perk _$PerkFromJson(Map<String, dynamic> json) {
  return _Perk.fromJson(json);
}

/// @nodoc
mixin _$Perk {
  PerkAction get action => throw _privateConstructorUsedError;
  List<ModifierUpdate> get modifierUpdates =>
      throw _privateConstructorUsedError;
  int get maxUses => throw _privateConstructorUsedError;
  int get used => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerkCopyWith<Perk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerkCopyWith<$Res> {
  factory $PerkCopyWith(Perk value, $Res Function(Perk) then) =
      _$PerkCopyWithImpl<$Res, Perk>;
  @useResult
  $Res call(
      {PerkAction action,
      List<ModifierUpdate> modifierUpdates,
      int maxUses,
      int used});
}

/// @nodoc
class _$PerkCopyWithImpl<$Res, $Val extends Perk>
    implements $PerkCopyWith<$Res> {
  _$PerkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? modifierUpdates = null,
    Object? maxUses = null,
    Object? used = null,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as PerkAction,
      modifierUpdates: null == modifierUpdates
          ? _value.modifierUpdates
          : modifierUpdates // ignore: cast_nullable_to_non_nullable
              as List<ModifierUpdate>,
      maxUses: null == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerkCopyWith<$Res> implements $PerkCopyWith<$Res> {
  factory _$$_PerkCopyWith(_$_Perk value, $Res Function(_$_Perk) then) =
      __$$_PerkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PerkAction action,
      List<ModifierUpdate> modifierUpdates,
      int maxUses,
      int used});
}

/// @nodoc
class __$$_PerkCopyWithImpl<$Res> extends _$PerkCopyWithImpl<$Res, _$_Perk>
    implements _$$_PerkCopyWith<$Res> {
  __$$_PerkCopyWithImpl(_$_Perk _value, $Res Function(_$_Perk) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? modifierUpdates = null,
    Object? maxUses = null,
    Object? used = null,
  }) {
    return _then(_$_Perk(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as PerkAction,
      modifierUpdates: null == modifierUpdates
          ? _value._modifierUpdates
          : modifierUpdates // ignore: cast_nullable_to_non_nullable
              as List<ModifierUpdate>,
      maxUses: null == maxUses
          ? _value.maxUses
          : maxUses // ignore: cast_nullable_to_non_nullable
              as int,
      used: null == used
          ? _value.used
          : used // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Perk implements _Perk {
  _$_Perk(
      {required this.action,
      required final List<ModifierUpdate> modifierUpdates,
      this.maxUses = 1,
      this.used = 0})
      : _modifierUpdates = modifierUpdates;

  factory _$_Perk.fromJson(Map<String, dynamic> json) => _$$_PerkFromJson(json);

  @override
  final PerkAction action;
  final List<ModifierUpdate> _modifierUpdates;
  @override
  List<ModifierUpdate> get modifierUpdates {
    if (_modifierUpdates is EqualUnmodifiableListView) return _modifierUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modifierUpdates);
  }

  @override
  @JsonKey()
  final int maxUses;
  @override
  @JsonKey()
  final int used;

  @override
  String toString() {
    return 'Perk(action: $action, modifierUpdates: $modifierUpdates, maxUses: $maxUses, used: $used)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Perk &&
            (identical(other.action, action) || other.action == action) &&
            const DeepCollectionEquality()
                .equals(other._modifierUpdates, _modifierUpdates) &&
            (identical(other.maxUses, maxUses) || other.maxUses == maxUses) &&
            (identical(other.used, used) || other.used == used));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action,
      const DeepCollectionEquality().hash(_modifierUpdates), maxUses, used);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerkCopyWith<_$_Perk> get copyWith =>
      __$$_PerkCopyWithImpl<_$_Perk>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerkToJson(
      this,
    );
  }
}

abstract class _Perk implements Perk {
  factory _Perk(
      {required final PerkAction action,
      required final List<ModifierUpdate> modifierUpdates,
      final int maxUses,
      final int used}) = _$_Perk;

  factory _Perk.fromJson(Map<String, dynamic> json) = _$_Perk.fromJson;

  @override
  PerkAction get action;
  @override
  List<ModifierUpdate> get modifierUpdates;
  @override
  int get maxUses;
  @override
  int get used;
  @override
  @JsonKey(ignore: true)
  _$$_PerkCopyWith<_$_Perk> get copyWith => throw _privateConstructorUsedError;
}
