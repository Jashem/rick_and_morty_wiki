// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InfoDTO _$InfoDTOFromJson(Map<String, dynamic> json) {
  return _InfoDTO.fromJson(json);
}

/// @nodoc
mixin _$InfoDTO {
  int? get count => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDTOCopyWith<InfoDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDTOCopyWith<$Res> {
  factory $InfoDTOCopyWith(InfoDTO value, $Res Function(InfoDTO) then) =
      _$InfoDTOCopyWithImpl<$Res, InfoDTO>;
  @useResult
  $Res call({int? count, int? pages});
}

/// @nodoc
class _$InfoDTOCopyWithImpl<$Res, $Val extends InfoDTO>
    implements $InfoDTOCopyWith<$Res> {
  _$InfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoDTOImplCopyWith<$Res> implements $InfoDTOCopyWith<$Res> {
  factory _$$InfoDTOImplCopyWith(
          _$InfoDTOImpl value, $Res Function(_$InfoDTOImpl) then) =
      __$$InfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, int? pages});
}

/// @nodoc
class __$$InfoDTOImplCopyWithImpl<$Res>
    extends _$InfoDTOCopyWithImpl<$Res, _$InfoDTOImpl>
    implements _$$InfoDTOImplCopyWith<$Res> {
  __$$InfoDTOImplCopyWithImpl(
      _$InfoDTOImpl _value, $Res Function(_$InfoDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? pages = freezed,
  }) {
    return _then(_$InfoDTOImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoDTOImpl extends _InfoDTO {
  _$InfoDTOImpl({this.count, this.pages}) : super._();

  factory _$InfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoDTOImplFromJson(json);

  @override
  final int? count;
  @override
  final int? pages;

  @override
  String toString() {
    return 'InfoDTO(count: $count, pages: $pages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoDTOImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.pages, pages) || other.pages == pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, pages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoDTOImplCopyWith<_$InfoDTOImpl> get copyWith =>
      __$$InfoDTOImplCopyWithImpl<_$InfoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoDTOImplToJson(
      this,
    );
  }
}

abstract class _InfoDTO extends InfoDTO {
  factory _InfoDTO({final int? count, final int? pages}) = _$InfoDTOImpl;
  _InfoDTO._() : super._();

  factory _InfoDTO.fromJson(Map<String, dynamic> json) = _$InfoDTOImpl.fromJson;

  @override
  int? get count;
  @override
  int? get pages;
  @override
  @JsonKey(ignore: true)
  _$$InfoDTOImplCopyWith<_$InfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
