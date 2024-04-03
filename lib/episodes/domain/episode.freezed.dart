// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Episode {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call({String id, String name, String episode});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? episode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String episode});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? episode = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EpisodeImpl extends _Episode {
  _$EpisodeImpl({required this.id, required this.name, required this.episode})
      : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final String episode;

  @override
  String toString() {
    return 'Episode(id: $id, name: $name, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, episode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);
}

abstract class _Episode extends Episode {
  factory _Episode(
      {required final String id,
      required final String name,
      required final String episode}) = _$EpisodeImpl;
  _Episode._() : super._();

  @override
  String get id;
  @override
  String get name;
  @override
  String get episode;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Episodes {
  Info get info => throw _privateConstructorUsedError;
  List<Episode> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodesCopyWith<Episodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodesCopyWith<$Res> {
  factory $EpisodesCopyWith(Episodes value, $Res Function(Episodes) then) =
      _$EpisodesCopyWithImpl<$Res, Episodes>;
  @useResult
  $Res call({Info info, List<Episode> results});

  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class _$EpisodesCopyWithImpl<$Res, $Val extends Episodes>
    implements $EpisodesCopyWith<$Res> {
  _$EpisodesCopyWithImpl(this._value, this._then);

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
              as Info,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res> get info {
    return $InfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodesImplCopyWith<$Res>
    implements $EpisodesCopyWith<$Res> {
  factory _$$EpisodesImplCopyWith(
          _$EpisodesImpl value, $Res Function(_$EpisodesImpl) then) =
      __$$EpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info info, List<Episode> results});

  @override
  $InfoCopyWith<$Res> get info;
}

/// @nodoc
class __$$EpisodesImplCopyWithImpl<$Res>
    extends _$EpisodesCopyWithImpl<$Res, _$EpisodesImpl>
    implements _$$EpisodesImplCopyWith<$Res> {
  __$$EpisodesImplCopyWithImpl(
      _$EpisodesImpl _value, $Res Function(_$EpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? results = null,
  }) {
    return _then(_$EpisodesImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc

class _$EpisodesImpl extends _Episodes {
  _$EpisodesImpl({required this.info, required final List<Episode> results})
      : _results = results,
        super._();

  @override
  final Info info;
  final List<Episode> _results;
  @override
  List<Episode> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Episodes(info: $info, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodesImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      __$$EpisodesImplCopyWithImpl<_$EpisodesImpl>(this, _$identity);
}

abstract class _Episodes extends Episodes {
  factory _Episodes(
      {required final Info info,
      required final List<Episode> results}) = _$EpisodesImpl;
  _Episodes._() : super._();

  @override
  Info get info;
  @override
  List<Episode> get results;
  @override
  @JsonKey(ignore: true)
  _$$EpisodesImplCopyWith<_$EpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
