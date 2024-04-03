// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CastFilterState {
  String get field => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CastFilterStateCopyWith<CastFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastFilterStateCopyWith<$Res> {
  factory $CastFilterStateCopyWith(
          CastFilterState value, $Res Function(CastFilterState) then) =
      _$CastFilterStateCopyWithImpl<$Res, CastFilterState>;
  @useResult
  $Res call({String field, String value});
}

/// @nodoc
class _$CastFilterStateCopyWithImpl<$Res, $Val extends CastFilterState>
    implements $CastFilterStateCopyWith<$Res> {
  _$CastFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastFilterStateImplCopyWith<$Res>
    implements $CastFilterStateCopyWith<$Res> {
  factory _$$CastFilterStateImplCopyWith(_$CastFilterStateImpl value,
          $Res Function(_$CastFilterStateImpl) then) =
      __$$CastFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String field, String value});
}

/// @nodoc
class __$$CastFilterStateImplCopyWithImpl<$Res>
    extends _$CastFilterStateCopyWithImpl<$Res, _$CastFilterStateImpl>
    implements _$$CastFilterStateImplCopyWith<$Res> {
  __$$CastFilterStateImplCopyWithImpl(
      _$CastFilterStateImpl _value, $Res Function(_$CastFilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? value = null,
  }) {
    return _then(_$CastFilterStateImpl(
      field: null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CastFilterStateImpl implements _CastFilterState {
  _$CastFilterStateImpl({required this.field, required this.value});

  @override
  final String field;
  @override
  final String value;

  @override
  String toString() {
    return 'CastFilterState(field: $field, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastFilterStateImpl &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastFilterStateImplCopyWith<_$CastFilterStateImpl> get copyWith =>
      __$$CastFilterStateImplCopyWithImpl<_$CastFilterStateImpl>(
          this, _$identity);
}

abstract class _CastFilterState implements CastFilterState {
  factory _CastFilterState(
      {required final String field,
      required final String value}) = _$CastFilterStateImpl;

  @override
  String get field;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CastFilterStateImplCopyWith<_$CastFilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
