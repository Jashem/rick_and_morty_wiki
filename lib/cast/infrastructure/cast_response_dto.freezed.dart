// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cast_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharactersDataDTO _$CharactersDataDTOFromJson(Map<String, dynamic> json) {
  return _CharactersDataDTO.fromJson(json);
}

/// @nodoc
mixin _$CharactersDataDTO {
  CharactersResponseDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersDataDTOCopyWith<CharactersDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersDataDTOCopyWith<$Res> {
  factory $CharactersDataDTOCopyWith(
          CharactersDataDTO value, $Res Function(CharactersDataDTO) then) =
      _$CharactersDataDTOCopyWithImpl<$Res, CharactersDataDTO>;
  @useResult
  $Res call({CharactersResponseDTO data});

  $CharactersResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$CharactersDataDTOCopyWithImpl<$Res, $Val extends CharactersDataDTO>
    implements $CharactersDataDTOCopyWith<$Res> {
  _$CharactersDataDTOCopyWithImpl(this._value, this._then);

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
              as CharactersResponseDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharactersResponseDTOCopyWith<$Res> get data {
    return $CharactersResponseDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharactersDataDTOImplCopyWith<$Res>
    implements $CharactersDataDTOCopyWith<$Res> {
  factory _$$CharactersDataDTOImplCopyWith(_$CharactersDataDTOImpl value,
          $Res Function(_$CharactersDataDTOImpl) then) =
      __$$CharactersDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CharactersResponseDTO data});

  @override
  $CharactersResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$CharactersDataDTOImplCopyWithImpl<$Res>
    extends _$CharactersDataDTOCopyWithImpl<$Res, _$CharactersDataDTOImpl>
    implements _$$CharactersDataDTOImplCopyWith<$Res> {
  __$$CharactersDataDTOImplCopyWithImpl(_$CharactersDataDTOImpl _value,
      $Res Function(_$CharactersDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CharactersDataDTOImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CharactersResponseDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersDataDTOImpl implements _CharactersDataDTO {
  _$CharactersDataDTOImpl({required this.data});

  factory _$CharactersDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersDataDTOImplFromJson(json);

  @override
  final CharactersResponseDTO data;

  @override
  String toString() {
    return 'CharactersDataDTO(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersDataDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersDataDTOImplCopyWith<_$CharactersDataDTOImpl> get copyWith =>
      __$$CharactersDataDTOImplCopyWithImpl<_$CharactersDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersDataDTOImplToJson(
      this,
    );
  }
}

abstract class _CharactersDataDTO implements CharactersDataDTO {
  factory _CharactersDataDTO({required final CharactersResponseDTO data}) =
      _$CharactersDataDTOImpl;

  factory _CharactersDataDTO.fromJson(Map<String, dynamic> json) =
      _$CharactersDataDTOImpl.fromJson;

  @override
  CharactersResponseDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$CharactersDataDTOImplCopyWith<_$CharactersDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharactersResponseDTO _$CharactersResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _CharactersResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$CharactersResponseDTO {
  CastsDTO get characters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharactersResponseDTOCopyWith<CharactersResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersResponseDTOCopyWith<$Res> {
  factory $CharactersResponseDTOCopyWith(CharactersResponseDTO value,
          $Res Function(CharactersResponseDTO) then) =
      _$CharactersResponseDTOCopyWithImpl<$Res, CharactersResponseDTO>;
  @useResult
  $Res call({CastsDTO characters});

  $CastsDTOCopyWith<$Res> get characters;
}

/// @nodoc
class _$CharactersResponseDTOCopyWithImpl<$Res,
        $Val extends CharactersResponseDTO>
    implements $CharactersResponseDTOCopyWith<$Res> {
  _$CharactersResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CastsDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CastsDTOCopyWith<$Res> get characters {
    return $CastsDTOCopyWith<$Res>(_value.characters, (value) {
      return _then(_value.copyWith(characters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharactersResponseDTOImplCopyWith<$Res>
    implements $CharactersResponseDTOCopyWith<$Res> {
  factory _$$CharactersResponseDTOImplCopyWith(
          _$CharactersResponseDTOImpl value,
          $Res Function(_$CharactersResponseDTOImpl) then) =
      __$$CharactersResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CastsDTO characters});

  @override
  $CastsDTOCopyWith<$Res> get characters;
}

/// @nodoc
class __$$CharactersResponseDTOImplCopyWithImpl<$Res>
    extends _$CharactersResponseDTOCopyWithImpl<$Res,
        _$CharactersResponseDTOImpl>
    implements _$$CharactersResponseDTOImplCopyWith<$Res> {
  __$$CharactersResponseDTOImplCopyWithImpl(_$CharactersResponseDTOImpl _value,
      $Res Function(_$CharactersResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
  }) {
    return _then(_$CharactersResponseDTOImpl(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as CastsDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharactersResponseDTOImpl implements _CharactersResponseDTO {
  _$CharactersResponseDTOImpl({required this.characters});

  factory _$CharactersResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharactersResponseDTOImplFromJson(json);

  @override
  final CastsDTO characters;

  @override
  String toString() {
    return 'CharactersResponseDTO(characters: $characters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersResponseDTOImpl &&
            (identical(other.characters, characters) ||
                other.characters == characters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, characters);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersResponseDTOImplCopyWith<_$CharactersResponseDTOImpl>
      get copyWith => __$$CharactersResponseDTOImplCopyWithImpl<
          _$CharactersResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharactersResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _CharactersResponseDTO implements CharactersResponseDTO {
  factory _CharactersResponseDTO({required final CastsDTO characters}) =
      _$CharactersResponseDTOImpl;

  factory _CharactersResponseDTO.fromJson(Map<String, dynamic> json) =
      _$CharactersResponseDTOImpl.fromJson;

  @override
  CastsDTO get characters;
  @override
  @JsonKey(ignore: true)
  _$$CharactersResponseDTOImplCopyWith<_$CharactersResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CastsDTO _$CastsDTOFromJson(Map<String, dynamic> json) {
  return _CastsDTO.fromJson(json);
}

/// @nodoc
mixin _$CastsDTO {
  InfoDTO get info => throw _privateConstructorUsedError;
  List<CastDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CastsDTOCopyWith<CastsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastsDTOCopyWith<$Res> {
  factory $CastsDTOCopyWith(CastsDTO value, $Res Function(CastsDTO) then) =
      _$CastsDTOCopyWithImpl<$Res, CastsDTO>;
  @useResult
  $Res call({InfoDTO info, List<CastDTO> results});

  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class _$CastsDTOCopyWithImpl<$Res, $Val extends CastsDTO>
    implements $CastsDTOCopyWith<$Res> {
  _$CastsDTOCopyWithImpl(this._value, this._then);

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
              as List<CastDTO>,
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
abstract class _$$CastsDTOImplCopyWith<$Res>
    implements $CastsDTOCopyWith<$Res> {
  factory _$$CastsDTOImplCopyWith(
          _$CastsDTOImpl value, $Res Function(_$CastsDTOImpl) then) =
      __$$CastsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoDTO info, List<CastDTO> results});

  @override
  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class __$$CastsDTOImplCopyWithImpl<$Res>
    extends _$CastsDTOCopyWithImpl<$Res, _$CastsDTOImpl>
    implements _$$CastsDTOImplCopyWith<$Res> {
  __$$CastsDTOImplCopyWithImpl(
      _$CastsDTOImpl _value, $Res Function(_$CastsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$CastsDTOImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDTO,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CastDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastsDTOImpl extends _CastsDTO {
  _$CastsDTOImpl({required this.info, required final List<CastDTO> results})
      : _results = results,
        super._();

  factory _$CastsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastsDTOImplFromJson(json);

  @override
  final InfoDTO info;
  final List<CastDTO> _results;
  @override
  List<CastDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CastsDTO(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastsDTOImpl &&
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
  _$$CastsDTOImplCopyWith<_$CastsDTOImpl> get copyWith =>
      __$$CastsDTOImplCopyWithImpl<_$CastsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastsDTOImplToJson(
      this,
    );
  }
}

abstract class _CastsDTO extends CastsDTO {
  factory _CastsDTO(
      {required final InfoDTO info,
      required final List<CastDTO> results}) = _$CastsDTOImpl;
  _CastsDTO._() : super._();

  factory _CastsDTO.fromJson(Map<String, dynamic> json) =
      _$CastsDTOImpl.fromJson;

  @override
  InfoDTO get info;
  @override
  List<CastDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$CastsDTOImplCopyWith<_$CastsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
