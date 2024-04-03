// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodeDTO _$EpisodeDTOFromJson(Map<String, dynamic> json) {
  return _EpisodeDTO.fromJson(json);
}

/// @nodoc
mixin _$EpisodeDTO {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDTOCopyWith<EpisodeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDTOCopyWith<$Res> {
  factory $EpisodeDTOCopyWith(
          EpisodeDTO value, $Res Function(EpisodeDTO) then) =
      _$EpisodeDTOCopyWithImpl<$Res, EpisodeDTO>;
  @useResult
  $Res call({String id, String? name, String? episode});
}

/// @nodoc
class _$EpisodeDTOCopyWithImpl<$Res, $Val extends EpisodeDTO>
    implements $EpisodeDTOCopyWith<$Res> {
  _$EpisodeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeDTOImplCopyWith<$Res>
    implements $EpisodeDTOCopyWith<$Res> {
  factory _$$EpisodeDTOImplCopyWith(
          _$EpisodeDTOImpl value, $Res Function(_$EpisodeDTOImpl) then) =
      __$$EpisodeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String? name, String? episode});
}

/// @nodoc
class __$$EpisodeDTOImplCopyWithImpl<$Res>
    extends _$EpisodeDTOCopyWithImpl<$Res, _$EpisodeDTOImpl>
    implements _$$EpisodeDTOImplCopyWith<$Res> {
  __$$EpisodeDTOImplCopyWithImpl(
      _$EpisodeDTOImpl _value, $Res Function(_$EpisodeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$EpisodeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeDTOImpl extends _EpisodeDTO {
  _$EpisodeDTOImpl({required this.id, this.name, this.episode}) : super._();

  factory _$EpisodeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? episode;

  @override
  String toString() {
    return 'EpisodeDTO(id: $id, name: $name, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, episode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDTOImplCopyWith<_$EpisodeDTOImpl> get copyWith =>
      __$$EpisodeDTOImplCopyWithImpl<_$EpisodeDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeDTOImplToJson(
      this,
    );
  }
}

abstract class _EpisodeDTO extends EpisodeDTO {
  factory _EpisodeDTO(
      {required final String id,
      final String? name,
      final String? episode}) = _$EpisodeDTOImpl;
  _EpisodeDTO._() : super._();

  factory _EpisodeDTO.fromJson(Map<String, dynamic> json) =
      _$EpisodeDTOImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get episode;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeDTOImplCopyWith<_$EpisodeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
