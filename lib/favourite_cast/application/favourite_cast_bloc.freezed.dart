// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_cast_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteCastEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchedAll,
    required TResult Function(Cast cast) removedFavourite,
    required TResult Function(Cast cast) addedFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchedAll,
    TResult? Function(Cast cast)? removedFavourite,
    TResult? Function(Cast cast)? addedFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchedAll,
    TResult Function(Cast cast)? removedFavourite,
    TResult Function(Cast cast)? addedFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchedAll value) fetchedAll,
    required TResult Function(_RemovedFavouite value) removedFavourite,
    required TResult Function(_AddedFavourite value) addedFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchedAll value)? fetchedAll,
    TResult? Function(_RemovedFavouite value)? removedFavourite,
    TResult? Function(_AddedFavourite value)? addedFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchedAll value)? fetchedAll,
    TResult Function(_RemovedFavouite value)? removedFavourite,
    TResult Function(_AddedFavourite value)? addedFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteCastEventCopyWith<$Res> {
  factory $FavouriteCastEventCopyWith(
          FavouriteCastEvent value, $Res Function(FavouriteCastEvent) then) =
      _$FavouriteCastEventCopyWithImpl<$Res, FavouriteCastEvent>;
}

/// @nodoc
class _$FavouriteCastEventCopyWithImpl<$Res, $Val extends FavouriteCastEvent>
    implements $FavouriteCastEventCopyWith<$Res> {
  _$FavouriteCastEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FavouriteCastEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FavouriteCastEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchedAll,
    required TResult Function(Cast cast) removedFavourite,
    required TResult Function(Cast cast) addedFavourite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchedAll,
    TResult? Function(Cast cast)? removedFavourite,
    TResult? Function(Cast cast)? addedFavourite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchedAll,
    TResult Function(Cast cast)? removedFavourite,
    TResult Function(Cast cast)? addedFavourite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchedAll value) fetchedAll,
    required TResult Function(_RemovedFavouite value) removedFavourite,
    required TResult Function(_AddedFavourite value) addedFavourite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchedAll value)? fetchedAll,
    TResult? Function(_RemovedFavouite value)? removedFavourite,
    TResult? Function(_AddedFavourite value)? addedFavourite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchedAll value)? fetchedAll,
    TResult Function(_RemovedFavouite value)? removedFavourite,
    TResult Function(_AddedFavourite value)? addedFavourite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FavouriteCastEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$FetchedAllImplCopyWith<$Res> {
  factory _$$FetchedAllImplCopyWith(
          _$FetchedAllImpl value, $Res Function(_$FetchedAllImpl) then) =
      __$$FetchedAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchedAllImplCopyWithImpl<$Res>
    extends _$FavouriteCastEventCopyWithImpl<$Res, _$FetchedAllImpl>
    implements _$$FetchedAllImplCopyWith<$Res> {
  __$$FetchedAllImplCopyWithImpl(
      _$FetchedAllImpl _value, $Res Function(_$FetchedAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchedAllImpl with DiagnosticableTreeMixin implements _FetchedAll {
  const _$FetchedAllImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastEvent.fetchedAll()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FavouriteCastEvent.fetchedAll'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchedAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchedAll,
    required TResult Function(Cast cast) removedFavourite,
    required TResult Function(Cast cast) addedFavourite,
  }) {
    return fetchedAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchedAll,
    TResult? Function(Cast cast)? removedFavourite,
    TResult? Function(Cast cast)? addedFavourite,
  }) {
    return fetchedAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchedAll,
    TResult Function(Cast cast)? removedFavourite,
    TResult Function(Cast cast)? addedFavourite,
    required TResult orElse(),
  }) {
    if (fetchedAll != null) {
      return fetchedAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchedAll value) fetchedAll,
    required TResult Function(_RemovedFavouite value) removedFavourite,
    required TResult Function(_AddedFavourite value) addedFavourite,
  }) {
    return fetchedAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchedAll value)? fetchedAll,
    TResult? Function(_RemovedFavouite value)? removedFavourite,
    TResult? Function(_AddedFavourite value)? addedFavourite,
  }) {
    return fetchedAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchedAll value)? fetchedAll,
    TResult Function(_RemovedFavouite value)? removedFavourite,
    TResult Function(_AddedFavourite value)? addedFavourite,
    required TResult orElse(),
  }) {
    if (fetchedAll != null) {
      return fetchedAll(this);
    }
    return orElse();
  }
}

abstract class _FetchedAll implements FavouriteCastEvent {
  const factory _FetchedAll() = _$FetchedAllImpl;
}

/// @nodoc
abstract class _$$RemovedFavouiteImplCopyWith<$Res> {
  factory _$$RemovedFavouiteImplCopyWith(_$RemovedFavouiteImpl value,
          $Res Function(_$RemovedFavouiteImpl) then) =
      __$$RemovedFavouiteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cast cast});

  $CastCopyWith<$Res> get cast;
}

/// @nodoc
class __$$RemovedFavouiteImplCopyWithImpl<$Res>
    extends _$FavouriteCastEventCopyWithImpl<$Res, _$RemovedFavouiteImpl>
    implements _$$RemovedFavouiteImplCopyWith<$Res> {
  __$$RemovedFavouiteImplCopyWithImpl(
      _$RemovedFavouiteImpl _value, $Res Function(_$RemovedFavouiteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
  }) {
    return _then(_$RemovedFavouiteImpl(
      null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as Cast,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CastCopyWith<$Res> get cast {
    return $CastCopyWith<$Res>(_value.cast, (value) {
      return _then(_value.copyWith(cast: value));
    });
  }
}

/// @nodoc

class _$RemovedFavouiteImpl
    with DiagnosticableTreeMixin
    implements _RemovedFavouite {
  const _$RemovedFavouiteImpl(this.cast);

  @override
  final Cast cast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastEvent.removedFavourite(cast: $cast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastEvent.removedFavourite'))
      ..add(DiagnosticsProperty('cast', cast));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemovedFavouiteImpl &&
            (identical(other.cast, cast) || other.cast == cast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemovedFavouiteImplCopyWith<_$RemovedFavouiteImpl> get copyWith =>
      __$$RemovedFavouiteImplCopyWithImpl<_$RemovedFavouiteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchedAll,
    required TResult Function(Cast cast) removedFavourite,
    required TResult Function(Cast cast) addedFavourite,
  }) {
    return removedFavourite(cast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchedAll,
    TResult? Function(Cast cast)? removedFavourite,
    TResult? Function(Cast cast)? addedFavourite,
  }) {
    return removedFavourite?.call(cast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchedAll,
    TResult Function(Cast cast)? removedFavourite,
    TResult Function(Cast cast)? addedFavourite,
    required TResult orElse(),
  }) {
    if (removedFavourite != null) {
      return removedFavourite(cast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchedAll value) fetchedAll,
    required TResult Function(_RemovedFavouite value) removedFavourite,
    required TResult Function(_AddedFavourite value) addedFavourite,
  }) {
    return removedFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchedAll value)? fetchedAll,
    TResult? Function(_RemovedFavouite value)? removedFavourite,
    TResult? Function(_AddedFavourite value)? addedFavourite,
  }) {
    return removedFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchedAll value)? fetchedAll,
    TResult Function(_RemovedFavouite value)? removedFavourite,
    TResult Function(_AddedFavourite value)? addedFavourite,
    required TResult orElse(),
  }) {
    if (removedFavourite != null) {
      return removedFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemovedFavouite implements FavouriteCastEvent {
  const factory _RemovedFavouite(final Cast cast) = _$RemovedFavouiteImpl;

  Cast get cast;
  @JsonKey(ignore: true)
  _$$RemovedFavouiteImplCopyWith<_$RemovedFavouiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedFavouriteImplCopyWith<$Res> {
  factory _$$AddedFavouriteImplCopyWith(_$AddedFavouriteImpl value,
          $Res Function(_$AddedFavouriteImpl) then) =
      __$$AddedFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Cast cast});

  $CastCopyWith<$Res> get cast;
}

/// @nodoc
class __$$AddedFavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteCastEventCopyWithImpl<$Res, _$AddedFavouriteImpl>
    implements _$$AddedFavouriteImplCopyWith<$Res> {
  __$$AddedFavouriteImplCopyWithImpl(
      _$AddedFavouriteImpl _value, $Res Function(_$AddedFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cast = null,
  }) {
    return _then(_$AddedFavouriteImpl(
      null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as Cast,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CastCopyWith<$Res> get cast {
    return $CastCopyWith<$Res>(_value.cast, (value) {
      return _then(_value.copyWith(cast: value));
    });
  }
}

/// @nodoc

class _$AddedFavouriteImpl
    with DiagnosticableTreeMixin
    implements _AddedFavourite {
  const _$AddedFavouriteImpl(this.cast);

  @override
  final Cast cast;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastEvent.addedFavourite(cast: $cast)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastEvent.addedFavourite'))
      ..add(DiagnosticsProperty('cast', cast));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedFavouriteImpl &&
            (identical(other.cast, cast) || other.cast == cast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cast);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedFavouriteImplCopyWith<_$AddedFavouriteImpl> get copyWith =>
      __$$AddedFavouriteImplCopyWithImpl<_$AddedFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() fetchedAll,
    required TResult Function(Cast cast) removedFavourite,
    required TResult Function(Cast cast) addedFavourite,
  }) {
    return addedFavourite(cast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? fetchedAll,
    TResult? Function(Cast cast)? removedFavourite,
    TResult? Function(Cast cast)? addedFavourite,
  }) {
    return addedFavourite?.call(cast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? fetchedAll,
    TResult Function(Cast cast)? removedFavourite,
    TResult Function(Cast cast)? addedFavourite,
    required TResult orElse(),
  }) {
    if (addedFavourite != null) {
      return addedFavourite(cast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FetchedAll value) fetchedAll,
    required TResult Function(_RemovedFavouite value) removedFavourite,
    required TResult Function(_AddedFavourite value) addedFavourite,
  }) {
    return addedFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_FetchedAll value)? fetchedAll,
    TResult? Function(_RemovedFavouite value)? removedFavourite,
    TResult? Function(_AddedFavourite value)? addedFavourite,
  }) {
    return addedFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FetchedAll value)? fetchedAll,
    TResult Function(_RemovedFavouite value)? removedFavourite,
    TResult Function(_AddedFavourite value)? addedFavourite,
    required TResult orElse(),
  }) {
    if (addedFavourite != null) {
      return addedFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddedFavourite implements FavouriteCastEvent {
  const factory _AddedFavourite(final Cast cast) = _$AddedFavouriteImpl;

  Cast get cast;
  @JsonKey(ignore: true)
  _$$AddedFavouriteImplCopyWith<_$AddedFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteCastState {
  List<Cast> get casts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Cast> casts) initial,
    required TResult Function(List<Cast> casts) loadInProgress,
    required TResult Function(List<Cast> casts) loadSuccess,
    required TResult Function(List<Cast> casts, Failure failure) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Cast> casts)? initial,
    TResult? Function(List<Cast> casts)? loadInProgress,
    TResult? Function(List<Cast> casts)? loadSuccess,
    TResult? Function(List<Cast> casts, Failure failure)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Cast> casts)? initial,
    TResult Function(List<Cast> casts)? loadInProgress,
    TResult Function(List<Cast> casts)? loadSuccess,
    TResult Function(List<Cast> casts, Failure failure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteCastStateCopyWith<FavouriteCastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteCastStateCopyWith<$Res> {
  factory $FavouriteCastStateCopyWith(
          FavouriteCastState value, $Res Function(FavouriteCastState) then) =
      _$FavouriteCastStateCopyWithImpl<$Res, FavouriteCastState>;
  @useResult
  $Res call({List<Cast> casts});
}

/// @nodoc
class _$FavouriteCastStateCopyWithImpl<$Res, $Val extends FavouriteCastState>
    implements $FavouriteCastStateCopyWith<$Res> {
  _$FavouriteCastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
  }) {
    return _then(_value.copyWith(
      casts: null == casts
          ? _value.casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $FavouriteCastStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> casts});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavouriteCastStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
  }) {
    return _then(_$InitialImpl(
      null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial with DiagnosticableTreeMixin {
  const _$InitialImpl(final List<Cast> casts)
      : _casts = casts,
        super._();

  final List<Cast> _casts;
  @override
  List<Cast> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastState.initial(casts: $casts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastState.initial'))
      ..add(DiagnosticsProperty('casts', casts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._casts, _casts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_casts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Cast> casts) initial,
    required TResult Function(List<Cast> casts) loadInProgress,
    required TResult Function(List<Cast> casts) loadSuccess,
    required TResult Function(List<Cast> casts, Failure failure) loadFailure,
  }) {
    return initial(casts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Cast> casts)? initial,
    TResult? Function(List<Cast> casts)? loadInProgress,
    TResult? Function(List<Cast> casts)? loadSuccess,
    TResult? Function(List<Cast> casts, Failure failure)? loadFailure,
  }) {
    return initial?.call(casts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Cast> casts)? initial,
    TResult Function(List<Cast> casts)? loadInProgress,
    TResult Function(List<Cast> casts)? loadSuccess,
    TResult Function(List<Cast> casts, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(casts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends FavouriteCastState {
  const factory _Initial(final List<Cast> casts) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  List<Cast> get casts;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res>
    implements $FavouriteCastStateCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> casts});
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$FavouriteCastStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
  }) {
    return _then(_$LoadInProgressImpl(
      null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

class _$LoadInProgressImpl extends _LoadInProgress
    with DiagnosticableTreeMixin {
  const _$LoadInProgressImpl(final List<Cast> casts)
      : _casts = casts,
        super._();

  final List<Cast> _casts;
  @override
  List<Cast> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastState.loadInProgress(casts: $casts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastState.loadInProgress'))
      ..add(DiagnosticsProperty('casts', casts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInProgressImpl &&
            const DeepCollectionEquality().equals(other._casts, _casts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_casts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      __$$LoadInProgressImplCopyWithImpl<_$LoadInProgressImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Cast> casts) initial,
    required TResult Function(List<Cast> casts) loadInProgress,
    required TResult Function(List<Cast> casts) loadSuccess,
    required TResult Function(List<Cast> casts, Failure failure) loadFailure,
  }) {
    return loadInProgress(casts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Cast> casts)? initial,
    TResult? Function(List<Cast> casts)? loadInProgress,
    TResult? Function(List<Cast> casts)? loadSuccess,
    TResult? Function(List<Cast> casts, Failure failure)? loadFailure,
  }) {
    return loadInProgress?.call(casts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Cast> casts)? initial,
    TResult Function(List<Cast> casts)? loadInProgress,
    TResult Function(List<Cast> casts)? loadSuccess,
    TResult Function(List<Cast> casts, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(casts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress extends FavouriteCastState {
  const factory _LoadInProgress(final List<Cast> casts) = _$LoadInProgressImpl;
  const _LoadInProgress._() : super._();

  @override
  List<Cast> get casts;
  @override
  @JsonKey(ignore: true)
  _$$LoadInProgressImplCopyWith<_$LoadInProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadSuccessImplCopyWith<$Res>
    implements $FavouriteCastStateCopyWith<$Res> {
  factory _$$LoadSuccessImplCopyWith(
          _$LoadSuccessImpl value, $Res Function(_$LoadSuccessImpl) then) =
      __$$LoadSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> casts});
}

/// @nodoc
class __$$LoadSuccessImplCopyWithImpl<$Res>
    extends _$FavouriteCastStateCopyWithImpl<$Res, _$LoadSuccessImpl>
    implements _$$LoadSuccessImplCopyWith<$Res> {
  __$$LoadSuccessImplCopyWithImpl(
      _$LoadSuccessImpl _value, $Res Function(_$LoadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
  }) {
    return _then(_$LoadSuccessImpl(
      null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc

class _$LoadSuccessImpl extends _LoadSuccess with DiagnosticableTreeMixin {
  const _$LoadSuccessImpl(final List<Cast> casts)
      : _casts = casts,
        super._();

  final List<Cast> _casts;
  @override
  List<Cast> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastState.loadSuccess(casts: $casts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastState.loadSuccess'))
      ..add(DiagnosticsProperty('casts', casts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSuccessImpl &&
            const DeepCollectionEquality().equals(other._casts, _casts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_casts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      __$$LoadSuccessImplCopyWithImpl<_$LoadSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Cast> casts) initial,
    required TResult Function(List<Cast> casts) loadInProgress,
    required TResult Function(List<Cast> casts) loadSuccess,
    required TResult Function(List<Cast> casts, Failure failure) loadFailure,
  }) {
    return loadSuccess(casts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Cast> casts)? initial,
    TResult? Function(List<Cast> casts)? loadInProgress,
    TResult? Function(List<Cast> casts)? loadSuccess,
    TResult? Function(List<Cast> casts, Failure failure)? loadFailure,
  }) {
    return loadSuccess?.call(casts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Cast> casts)? initial,
    TResult Function(List<Cast> casts)? loadInProgress,
    TResult Function(List<Cast> casts)? loadSuccess,
    TResult Function(List<Cast> casts, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(casts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess extends FavouriteCastState {
  const factory _LoadSuccess(final List<Cast> casts) = _$LoadSuccessImpl;
  const _LoadSuccess._() : super._();

  @override
  List<Cast> get casts;
  @override
  @JsonKey(ignore: true)
  _$$LoadSuccessImplCopyWith<_$LoadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadFailureImplCopyWith<$Res>
    implements $FavouriteCastStateCopyWith<$Res> {
  factory _$$LoadFailureImplCopyWith(
          _$LoadFailureImpl value, $Res Function(_$LoadFailureImpl) then) =
      __$$LoadFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Cast> casts, Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LoadFailureImplCopyWithImpl<$Res>
    extends _$FavouriteCastStateCopyWithImpl<$Res, _$LoadFailureImpl>
    implements _$$LoadFailureImplCopyWith<$Res> {
  __$$LoadFailureImplCopyWithImpl(
      _$LoadFailureImpl _value, $Res Function(_$LoadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? casts = null,
    Object? failure = null,
  }) {
    return _then(_$LoadFailureImpl(
      null == casts
          ? _value._casts
          : casts // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LoadFailureImpl extends _LoadFailure with DiagnosticableTreeMixin {
  const _$LoadFailureImpl(final List<Cast> casts, this.failure)
      : _casts = casts,
        super._();

  final List<Cast> _casts;
  @override
  List<Cast> get casts {
    if (_casts is EqualUnmodifiableListView) return _casts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_casts);
  }

  @override
  final Failure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCastState.loadFailure(casts: $casts, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCastState.loadFailure'))
      ..add(DiagnosticsProperty('casts', casts))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadFailureImpl &&
            const DeepCollectionEquality().equals(other._casts, _casts) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_casts), failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      __$$LoadFailureImplCopyWithImpl<_$LoadFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Cast> casts) initial,
    required TResult Function(List<Cast> casts) loadInProgress,
    required TResult Function(List<Cast> casts) loadSuccess,
    required TResult Function(List<Cast> casts, Failure failure) loadFailure,
  }) {
    return loadFailure(casts, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Cast> casts)? initial,
    TResult? Function(List<Cast> casts)? loadInProgress,
    TResult? Function(List<Cast> casts)? loadSuccess,
    TResult? Function(List<Cast> casts, Failure failure)? loadFailure,
  }) {
    return loadFailure?.call(casts, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Cast> casts)? initial,
    TResult Function(List<Cast> casts)? loadInProgress,
    TResult Function(List<Cast> casts)? loadSuccess,
    TResult Function(List<Cast> casts, Failure failure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(casts, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure extends FavouriteCastState {
  const factory _LoadFailure(final List<Cast> casts, final Failure failure) =
      _$LoadFailureImpl;
  const _LoadFailure._() : super._();

  @override
  List<Cast> get casts;
  Failure get failure;
  @override
  @JsonKey(ignore: true)
  _$$LoadFailureImplCopyWith<_$LoadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
