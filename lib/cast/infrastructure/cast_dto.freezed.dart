// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CastDTO _$CastDTOFromJson(Map<String, dynamic> json) {
  return _CastDTO.fromJson(json);
}

/// @nodoc
mixin _$CastDTO {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  LocationDTO? get origin => throw _privateConstructorUsedError;
  LocationDTO? get location => throw _privateConstructorUsedError;
  List<EpisodeDTO>? get episode => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastDTOCopyWith<CastDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastDTOCopyWith<$Res> {
  factory $CastDTOCopyWith(CastDTO value, $Res Function(CastDTO) then) =
      _$CastDTOCopyWithImpl<$Res, CastDTO>;
  @useResult
  $Res call(
      {String id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      LocationDTO? origin,
      LocationDTO? location,
      List<EpisodeDTO>? episode,
      String? image});

  $LocationDTOCopyWith<$Res>? get origin;
  $LocationDTOCopyWith<$Res>? get location;
}

/// @nodoc
class _$CastDTOCopyWithImpl<$Res, $Val extends CastDTO>
    implements $CastDTOCopyWith<$Res> {
  _$CastDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? episode = freezed,
    Object? image = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as LocationDTO?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDTO>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDTOCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $LocationDTOCopyWith<$Res>(_value.origin!, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationDTOCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDTOCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CastDTOImplCopyWith<$Res> implements $CastDTOCopyWith<$Res> {
  factory _$$CastDTOImplCopyWith(
          _$CastDTOImpl value, $Res Function(_$CastDTOImpl) then) =
      __$$CastDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      LocationDTO? origin,
      LocationDTO? location,
      List<EpisodeDTO>? episode,
      String? image});

  @override
  $LocationDTOCopyWith<$Res>? get origin;
  @override
  $LocationDTOCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CastDTOImplCopyWithImpl<$Res>
    extends _$CastDTOCopyWithImpl<$Res, _$CastDTOImpl>
    implements _$$CastDTOImplCopyWith<$Res> {
  __$$CastDTOImplCopyWithImpl(
      _$CastDTOImpl _value, $Res Function(_$CastDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? episode = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CastDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as LocationDTO?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDTO?,
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDTO>?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastDTOImpl extends _CastDTO {
  _$CastDTOImpl(
      {required this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      final List<EpisodeDTO>? episode,
      this.image})
      : _episode = episode,
        super._();

  factory _$CastDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final LocationDTO? origin;
  @override
  final LocationDTO? location;
  final List<EpisodeDTO>? _episode;
  @override
  List<EpisodeDTO>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? image;

  @override
  String toString() {
    return 'CastDTO(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, episode: $episode, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other._episode, _episode) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      const DeepCollectionEquality().hash(_episode),
      image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CastDTOImplCopyWith<_$CastDTOImpl> get copyWith =>
      __$$CastDTOImplCopyWithImpl<_$CastDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastDTOImplToJson(
      this,
    );
  }
}

abstract class _CastDTO extends CastDTO {
  factory _CastDTO(
      {required final String id,
      final String? name,
      final String? status,
      final String? species,
      final String? type,
      final String? gender,
      final LocationDTO? origin,
      final LocationDTO? location,
      final List<EpisodeDTO>? episode,
      final String? image}) = _$CastDTOImpl;
  _CastDTO._() : super._();

  factory _CastDTO.fromJson(Map<String, dynamic> json) = _$CastDTOImpl.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get species;
  @override
  String? get type;
  @override
  String? get gender;
  @override
  LocationDTO? get origin;
  @override
  LocationDTO? get location;
  @override
  List<EpisodeDTO>? get episode;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$CastDTOImplCopyWith<_$CastDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
