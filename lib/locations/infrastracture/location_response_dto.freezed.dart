// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocationsDataDTO _$LocationsDataDTOFromJson(Map<String, dynamic> json) {
  return _LocationsDataDTO.fromJson(json);
}

/// @nodoc
mixin _$LocationsDataDTO {
  LocationsResponseDTO get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsDataDTOCopyWith<LocationsDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsDataDTOCopyWith<$Res> {
  factory $LocationsDataDTOCopyWith(
          LocationsDataDTO value, $Res Function(LocationsDataDTO) then) =
      _$LocationsDataDTOCopyWithImpl<$Res, LocationsDataDTO>;
  @useResult
  $Res call({LocationsResponseDTO data});

  $LocationsResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class _$LocationsDataDTOCopyWithImpl<$Res, $Val extends LocationsDataDTO>
    implements $LocationsDataDTOCopyWith<$Res> {
  _$LocationsDataDTOCopyWithImpl(this._value, this._then);

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
              as LocationsResponseDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationsResponseDTOCopyWith<$Res> get data {
    return $LocationsResponseDTOCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationsDataDTOImplCopyWith<$Res>
    implements $LocationsDataDTOCopyWith<$Res> {
  factory _$$LocationsDataDTOImplCopyWith(_$LocationsDataDTOImpl value,
          $Res Function(_$LocationsDataDTOImpl) then) =
      __$$LocationsDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationsResponseDTO data});

  @override
  $LocationsResponseDTOCopyWith<$Res> get data;
}

/// @nodoc
class __$$LocationsDataDTOImplCopyWithImpl<$Res>
    extends _$LocationsDataDTOCopyWithImpl<$Res, _$LocationsDataDTOImpl>
    implements _$$LocationsDataDTOImplCopyWith<$Res> {
  __$$LocationsDataDTOImplCopyWithImpl(_$LocationsDataDTOImpl _value,
      $Res Function(_$LocationsDataDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LocationsDataDTOImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LocationsResponseDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsDataDTOImpl implements _LocationsDataDTO {
  _$LocationsDataDTOImpl({required this.data});

  factory _$LocationsDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsDataDTOImplFromJson(json);

  @override
  final LocationsResponseDTO data;

  @override
  String toString() {
    return 'LocationsDataDTO(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsDataDTOImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsDataDTOImplCopyWith<_$LocationsDataDTOImpl> get copyWith =>
      __$$LocationsDataDTOImplCopyWithImpl<_$LocationsDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsDataDTOImplToJson(
      this,
    );
  }
}

abstract class _LocationsDataDTO implements LocationsDataDTO {
  factory _LocationsDataDTO({required final LocationsResponseDTO data}) =
      _$LocationsDataDTOImpl;

  factory _LocationsDataDTO.fromJson(Map<String, dynamic> json) =
      _$LocationsDataDTOImpl.fromJson;

  @override
  LocationsResponseDTO get data;
  @override
  @JsonKey(ignore: true)
  _$$LocationsDataDTOImplCopyWith<_$LocationsDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationsResponseDTO _$LocationsResponseDTOFromJson(Map<String, dynamic> json) {
  return _LocationsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$LocationsResponseDTO {
  LocationsDTO get locations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsResponseDTOCopyWith<LocationsResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsResponseDTOCopyWith<$Res> {
  factory $LocationsResponseDTOCopyWith(LocationsResponseDTO value,
          $Res Function(LocationsResponseDTO) then) =
      _$LocationsResponseDTOCopyWithImpl<$Res, LocationsResponseDTO>;
  @useResult
  $Res call({LocationsDTO locations});

  $LocationsDTOCopyWith<$Res> get locations;
}

/// @nodoc
class _$LocationsResponseDTOCopyWithImpl<$Res,
        $Val extends LocationsResponseDTO>
    implements $LocationsResponseDTOCopyWith<$Res> {
  _$LocationsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationsDTOCopyWith<$Res> get locations {
    return $LocationsDTOCopyWith<$Res>(_value.locations, (value) {
      return _then(_value.copyWith(locations: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationsResponseDTOImplCopyWith<$Res>
    implements $LocationsResponseDTOCopyWith<$Res> {
  factory _$$LocationsResponseDTOImplCopyWith(_$LocationsResponseDTOImpl value,
          $Res Function(_$LocationsResponseDTOImpl) then) =
      __$$LocationsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationsDTO locations});

  @override
  $LocationsDTOCopyWith<$Res> get locations;
}

/// @nodoc
class __$$LocationsResponseDTOImplCopyWithImpl<$Res>
    extends _$LocationsResponseDTOCopyWithImpl<$Res, _$LocationsResponseDTOImpl>
    implements _$$LocationsResponseDTOImplCopyWith<$Res> {
  __$$LocationsResponseDTOImplCopyWithImpl(_$LocationsResponseDTOImpl _value,
      $Res Function(_$LocationsResponseDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
  }) {
    return _then(_$LocationsResponseDTOImpl(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as LocationsDTO,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsResponseDTOImpl implements _LocationsResponseDTO {
  _$LocationsResponseDTOImpl({required this.locations});

  factory _$LocationsResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsResponseDTOImplFromJson(json);

  @override
  final LocationsDTO locations;

  @override
  String toString() {
    return 'LocationsResponseDTO(locations: $locations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsResponseDTOImpl &&
            (identical(other.locations, locations) ||
                other.locations == locations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, locations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationsResponseDTOImplCopyWith<_$LocationsResponseDTOImpl>
      get copyWith =>
          __$$LocationsResponseDTOImplCopyWithImpl<_$LocationsResponseDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _LocationsResponseDTO implements LocationsResponseDTO {
  factory _LocationsResponseDTO({required final LocationsDTO locations}) =
      _$LocationsResponseDTOImpl;

  factory _LocationsResponseDTO.fromJson(Map<String, dynamic> json) =
      _$LocationsResponseDTOImpl.fromJson;

  @override
  LocationsDTO get locations;
  @override
  @JsonKey(ignore: true)
  _$$LocationsResponseDTOImplCopyWith<_$LocationsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LocationsDTO _$LocationsDTOFromJson(Map<String, dynamic> json) {
  return _LocationsDTO.fromJson(json);
}

/// @nodoc
mixin _$LocationsDTO {
  InfoDTO get info => throw _privateConstructorUsedError;
  List<LocationDTO> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationsDTOCopyWith<LocationsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsDTOCopyWith<$Res> {
  factory $LocationsDTOCopyWith(
          LocationsDTO value, $Res Function(LocationsDTO) then) =
      _$LocationsDTOCopyWithImpl<$Res, LocationsDTO>;
  @useResult
  $Res call({InfoDTO info, List<LocationDTO> results});

  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class _$LocationsDTOCopyWithImpl<$Res, $Val extends LocationsDTO>
    implements $LocationsDTOCopyWith<$Res> {
  _$LocationsDTOCopyWithImpl(this._value, this._then);

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
              as List<LocationDTO>,
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
abstract class _$$LocationsDTOImplCopyWith<$Res>
    implements $LocationsDTOCopyWith<$Res> {
  factory _$$LocationsDTOImplCopyWith(
          _$LocationsDTOImpl value, $Res Function(_$LocationsDTOImpl) then) =
      __$$LocationsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InfoDTO info, List<LocationDTO> results});

  @override
  $InfoDTOCopyWith<$Res> get info;
}

/// @nodoc
class __$$LocationsDTOImplCopyWithImpl<$Res>
    extends _$LocationsDTOCopyWithImpl<$Res, _$LocationsDTOImpl>
    implements _$$LocationsDTOImplCopyWith<$Res> {
  __$$LocationsDTOImplCopyWithImpl(
      _$LocationsDTOImpl _value, $Res Function(_$LocationsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$LocationsDTOImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoDTO,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LocationDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationsDTOImpl extends _LocationsDTO {
  _$LocationsDTOImpl(
      {required this.info, required final List<LocationDTO> results})
      : _results = results,
        super._();

  factory _$LocationsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationsDTOImplFromJson(json);

  @override
  final InfoDTO info;
  final List<LocationDTO> _results;
  @override
  List<LocationDTO> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'LocationsDTO(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationsDTOImpl &&
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
  _$$LocationsDTOImplCopyWith<_$LocationsDTOImpl> get copyWith =>
      __$$LocationsDTOImplCopyWithImpl<_$LocationsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationsDTOImplToJson(
      this,
    );
  }
}

abstract class _LocationsDTO extends LocationsDTO {
  factory _LocationsDTO(
      {required final InfoDTO info,
      required final List<LocationDTO> results}) = _$LocationsDTOImpl;
  _LocationsDTO._() : super._();

  factory _LocationsDTO.fromJson(Map<String, dynamic> json) =
      _$LocationsDTOImpl.fromJson;

  @override
  InfoDTO get info;
  @override
  List<LocationDTO> get results;
  @override
  @JsonKey(ignore: true)
  _$$LocationsDTOImplCopyWith<_$LocationsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
