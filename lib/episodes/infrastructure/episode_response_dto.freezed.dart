// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodesDataDTO _$EpisodesDataDTOFromJson(Map<String, dynamic> json) {
  return _EpisodesDataDTO.fromJson(json);
}

/// @nodoc
mixin _$EpisodesDataDTO {
  EpisodesResponseDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesDataDTOCopyWith<EpisodesDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesDataDTOCopyWith<$Res> {
  factory $EpisodesDataDTOCopyWith(
          EpisodesDataDTO value, $Res Function(EpisodesDataDTO) then) =
      _$EpisodesDataDTOCopyWithImpl<$Res, EpisodesDataDTO>;
  @useResult
  $Res call({EpisodesResponseDTO data});

  $EpisodesResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$EpisodesDataDTOCopyWithImpl<$Res, $Val extends EpisodesDataDTO>
    implements $EpisodesDataDTOCopyWith<$Res> {
  _$EpisodesDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodesResponseDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodesResponseDTOCopyWith<$Res> get data {
    return $EpisodesResponseDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesDataDTOImplCopyWith<$Res>
    implements $EpisodesDataDTOCopyWith<$Res> {
  factory _$$EpisodesDataDTOImplCopyWith(_$EpisodesDataDTOImpl value,
          $Res Function(_$EpisodesDataDTOImpl) then) =
      __$$EpisodesDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EpisodesResponseDTO data});

  @override
  $EpisodesResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$EpisodesDataDTOImplCopyWithImpl<$Res>
    extends _$EpisodesDataDTOCopyWithImpl<$Res, _$EpisodesDataDTOImpl>
    implements _$$EpisodesDataDTOImplCopyWith<$Res> {
  __$$EpisodesDataDTOImplCopyWithImpl(
      _$EpisodesDataDTOImpl _value, $Res Function(_$EpisodesDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EpisodesDataDTOImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EpisodesResponseDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesDataDTOImpl implements _EpisodesDataDTO {
  _$EpisodesDataDTOImpl({required this.data});

  factory _$EpisodesDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesDataDTOImplFromJson(json);

  @override
  final EpisodesResponseDTO data;

  @override
  String toString() {
    return 'EpisodesDataDTO(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesDataDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesDataDTOImplCopyWith<_$EpisodesDataDTOImpl> get copyWith =>
      __$$EpisodesDataDTOImplCopyWithImpl<_$EpisodesDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesDataDTOImplToJson(
      this,
    );
  }
}

abstract class _EpisodesDataDTO implements EpisodesDataDTO {
  factory _EpisodesDataDTO({required final EpisodesResponseDTO data}) =
      _$EpisodesDataDTOImpl;

  factory _EpisodesDataDTO.fromJson(Map<String, dynamic> json) =
      _$EpisodesDataDTOImpl.fromJson;

  @override
  EpisodesResponseDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesDataDTOImplCopyWith<_$EpisodesDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodesResponseDTO _$EpisodesResponseDTOFromJson(Map<String, dynamic> json) {
  return _EpisodesResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$EpisodesResponseDTO {
  EpisodesDTO get episodes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesResponseDTOCopyWith<EpisodesResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesResponseDTOCopyWith<$Res> {
  factory $EpisodesResponseDTOCopyWith(
          EpisodesResponseDTO value, $Res Function(EpisodesResponseDTO) then) =
      _$EpisodesResponseDTOCopyWithImpl<$Res, EpisodesResponseDTO>;
  @useResult
  $Res call({EpisodesDTO episodes});

  $EpisodesDTOCopyWith<$Res> get episodes;
}

/// @nodoc
class _$EpisodesResponseDTOCopyWithImpl<$Res, $Val extends EpisodesResponseDTO>
    implements $EpisodesResponseDTOCopyWith<$Res> {
  _$EpisodesResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
  }) {
    return _then(_value.copyWith(
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as EpisodesDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EpisodesDTOCopyWith<$Res> get episodes {
    return $EpisodesDTOCopyWith<$Res>(_value.episodes, (value) {
      return _then(_value.copyWith(episodes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesResponseDTOImplCopyWith<$Res>
    implements $EpisodesResponseDTOCopyWith<$Res> {
  factory _$$EpisodesResponseDTOImplCopyWith(_$EpisodesResponseDTOImpl value,
          $Res Function(_$EpisodesResponseDTOImpl) then) =
      __$$EpisodesResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EpisodesDTO episodes});

  @override
  $EpisodesDTOCopyWith<$Res> get episodes;
}

/// @nodoc
class __$$EpisodesResponseDTOImplCopyWithImpl<$Res>
    extends _$EpisodesResponseDTOCopyWithImpl<$Res, _$EpisodesResponseDTOImpl>
    implements _$$EpisodesResponseDTOImplCopyWith<$Res> {
  __$$EpisodesResponseDTOImplCopyWithImpl(_$EpisodesResponseDTOImpl _value,
      $Res Function(_$EpisodesResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodes = null,
  }) {
    return _then(_$EpisodesResponseDTOImpl(
      episodes: null == episodes
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as EpisodesDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesResponseDTOImpl implements _EpisodesResponseDTO {
  _$EpisodesResponseDTOImpl({required this.episodes});

  factory _$EpisodesResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesResponseDTOImplFromJson(json);

  @override
  final EpisodesDTO episodes;

  @override
  String toString() {
    return 'EpisodesResponseDTO(episodes: $episodes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesResponseDTOImpl &&
            (identical(other.episodes, episodes) ||
                other.episodes == episodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, episodes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesResponseDTOImplCopyWith<_$EpisodesResponseDTOImpl> get copyWith =>
      __$$EpisodesResponseDTOImplCopyWithImpl<_$EpisodesResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _EpisodesResponseDTO implements EpisodesResponseDTO {
  factory _EpisodesResponseDTO({required final EpisodesDTO episodes}) =
      _$EpisodesResponseDTOImpl;

  factory _EpisodesResponseDTO.fromJson(Map<String, dynamic> json) =
      _$EpisodesResponseDTOImpl.fromJson;

  @override
  EpisodesDTO get episodes;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesResponseDTOImplCopyWith<_$EpisodesResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodesDTO _$EpisodesDTOFromJson(Map<String, dynamic> json) {
  return _EpisodesDTO.fromJson(json);
}

/// @nodoc
mixin _$EpisodesDTO {
  InfoDTO get info => throw _privateConstructorUsedError;
  List<EpisodeDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodesDTOCopyWith<EpisodesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesDTOCopyWith<$Res> {
  factory $EpisodesDTOCopyWith(
          EpisodesDTO value, $Res Function(EpisodesDTO) then) =
      _$EpisodesDTOCopyWithImpl<$Res, EpisodesDTO>;
  @useResult
  $Res call({InfoDTO info, List<EpisodeDTO> results});

  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class _$EpisodesDTOCopyWithImpl<$Res, $Val extends EpisodesDTO>
    implements $EpisodesDTOCopyWith<$Res> {
  _$EpisodesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDTO,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDTO>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoDTOCopyWith<$Res> get info {
    return $InfoDTOCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesDTOImplCopyWith<$Res>
    implements $EpisodesDTOCopyWith<$Res> {
  factory _$$EpisodesDTOImplCopyWith(
          _$EpisodesDTOImpl value, $Res Function(_$EpisodesDTOImpl) then) =
      __$$EpisodesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoDTO info, List<EpisodeDTO> results});

  @override
  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class __$$EpisodesDTOImplCopyWithImpl<$Res>
    extends _$EpisodesDTOCopyWithImpl<$Res, _$EpisodesDTOImpl>
    implements _$$EpisodesDTOImplCopyWith<$Res> {
  __$$EpisodesDTOImplCopyWithImpl(
      _$EpisodesDTOImpl _value, $Res Function(_$EpisodesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$EpisodesDTOImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDTO,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodesDTOImpl extends _EpisodesDTO {
  _$EpisodesDTOImpl(
      {required this.info, required final List<EpisodeDTO> results})
      : _results = results,
        super._();

  factory _$EpisodesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodesDTOImplFromJson(json);

  @override
  final InfoDTO info;
  final List<EpisodeDTO> _results;
  @override
  List<EpisodeDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'EpisodesDTO(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesDTOImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesDTOImplCopyWith<_$EpisodesDTOImpl> get copyWith =>
      __$$EpisodesDTOImplCopyWithImpl<_$EpisodesDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodesDTOImplToJson(
      this,
    );
  }
}

abstract class _EpisodesDTO extends EpisodesDTO {
  factory _EpisodesDTO(
      {required final InfoDTO info,
      required final List<EpisodeDTO> results}) = _$EpisodesDTOImpl;
  _EpisodesDTO._() : super._();

  factory _EpisodesDTO.fromJson(Map<String, dynamic> json) =
      _$EpisodesDTOImpl.fromJson;

  @override
  InfoDTO get info;
  @override
  List<EpisodeDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesDTOImplCopyWith<_$EpisodesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
