// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginatedData<T> {
  T get entity => throw _privateConstructorUsedError;
  int? get maxPage => throw _privateConstructorUsedError;
  bool? get isNextPageAvailable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaginatedDataCopyWith<T, PaginatedData<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedDataCopyWith<T, $Res> {
  factory $PaginatedDataCopyWith(
          PaginatedData<T> value, $Res Function(PaginatedData<T>) then) =
      _$PaginatedDataCopyWithImpl<T, $Res, PaginatedData<T>>;
  @useResult
  $Res call({T entity, int? maxPage, bool? isNextPageAvailable});
}

/// @nodoc
class _$PaginatedDataCopyWithImpl<T, $Res, $Val extends PaginatedData<T>>
    implements $PaginatedDataCopyWith<T, $Res> {
  _$PaginatedDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? maxPage = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPageAvailable: freezed == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginatedDataImplCopyWith<T, $Res>
    implements $PaginatedDataCopyWith<T, $Res> {
  factory _$$PaginatedDataImplCopyWith(_$PaginatedDataImpl<T> value,
          $Res Function(_$PaginatedDataImpl<T>) then) =
      __$$PaginatedDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T entity, int? maxPage, bool? isNextPageAvailable});
}

/// @nodoc
class __$$PaginatedDataImplCopyWithImpl<T, $Res>
    extends _$PaginatedDataCopyWithImpl<T, $Res, _$PaginatedDataImpl<T>>
    implements _$$PaginatedDataImplCopyWith<T, $Res> {
  __$$PaginatedDataImplCopyWithImpl(_$PaginatedDataImpl<T> _value,
      $Res Function(_$PaginatedDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entity = freezed,
    Object? maxPage = freezed,
    Object? isNextPageAvailable = freezed,
  }) {
    return _then(_$PaginatedDataImpl<T>(
      entity: freezed == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: freezed == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int?,
      isNextPageAvailable: freezed == isNextPageAvailable
          ? _value.isNextPageAvailable
          : isNextPageAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$PaginatedDataImpl<T> extends _PaginatedData<T> {
  const _$PaginatedDataImpl(
      {required this.entity, this.maxPage, this.isNextPageAvailable})
      : super._();

  @override
  final T entity;
  @override
  final int? maxPage;
  @override
  final bool? isNextPageAvailable;

  @override
  String toString() {
    return 'PaginatedData<$T>(entity: $entity, maxPage: $maxPage, isNextPageAvailable: $isNextPageAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginatedDataImpl<T> &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage) &&
            (identical(other.isNextPageAvailable, isNextPageAvailable) ||
                other.isNextPageAvailable == isNextPageAvailable));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(entity),
      maxPage,
      isNextPageAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginatedDataImplCopyWith<T, _$PaginatedDataImpl<T>> get copyWith =>
      __$$PaginatedDataImplCopyWithImpl<T, _$PaginatedDataImpl<T>>(
          this, _$identity);
}

abstract class _PaginatedData<T> extends PaginatedData<T> {
  const factory _PaginatedData(
      {required final T entity,
      final int? maxPage,
      final bool? isNextPageAvailable}) = _$PaginatedDataImpl<T>;
  const _PaginatedData._() : super._();

  @override
  T get entity;
  @override
  int? get maxPage;
  @override
  bool? get isNextPageAvailable;
  @override
  @JsonKey(ignore: true)
  _$$PaginatedDataImplCopyWith<T, _$PaginatedDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
