import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../cast/domain/cast.dart';
import '../../core/domain/failure.dart';
import '../infrastructure/favourite_cast_repository.dart';

part 'favourite_cast_event.dart';
part 'favourite_cast_state.dart';
part 'favourite_cast_bloc.freezed.dart';

class FavouriteCastBloc extends Bloc<FavouriteCastEvent, FavouriteCastState> {
  final FavouriteCastRepository _repository;
  FavouriteCastBloc(this._repository)
      : super(const FavouriteCastState.initial([])) {
    on<_FetchedAll>(_onFavouriteCastFetched);
    on<_AddedFavourite>(_onFavouriteCastAdded);
    on<_RemovedFavouite>(_onFavouriteCastRemoved);
  }

  Future<void> _onFavouriteCastFetched(
    _FetchedAll event,
    Emitter<FavouriteCastState> emit,
  ) async {
    emit(FavouriteCastState.loadInProgress(state.casts));

    final failureOrRepos = await _repository.getFavouriteCasts();
    emit(failureOrRepos.fold(
      (l) => FavouriteCastState.loadFailure(
        state.casts,
        l,
      ),
      (r) {
        return FavouriteCastState.loadSuccess(r);
      },
    ));
  }

  Future<void> _onFavouriteCastAdded(
    _AddedFavourite event,
    Emitter<FavouriteCastState> emit,
  ) async {
    final failureOrRepos = await _repository.saveCast(state.casts, event.cast);
    emit(failureOrRepos.fold(
      (l) => FavouriteCastState.loadFailure(
        state.casts,
        l,
      ),
      (r) {
        return FavouriteCastState.loadSuccess(r);
      },
    ));
  }

  Future<void> _onFavouriteCastRemoved(
    _RemovedFavouite event,
    Emitter<FavouriteCastState> emit,
  ) async {
    final failureOrRepos =
        await _repository.removeCast(state.casts, event.cast);
    emit(failureOrRepos.fold(
      (l) => FavouriteCastState.loadFailure(
        state.casts,
        l,
      ),
      (r) {
        return FavouriteCastState.loadSuccess(r);
      },
    ));
  }
}
