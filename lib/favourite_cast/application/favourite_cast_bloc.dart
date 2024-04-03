import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../cast/domain/cast.dart';
import '../../core/domain/failure.dart';
import '../infrastructure/favourite_cast_repository.dart';
import 'favourite_cast_filter/cast_filter_cubit.dart';

part 'favourite_cast_event.dart';
part 'favourite_cast_state.dart';
part 'favourite_cast_bloc.freezed.dart';

class FavouriteCastBloc extends Bloc<FavouriteCastEvent, FavouriteCastState> {
  final FavouriteCastRepository _repository;
  final FavouriteCastFilterCubit _filterCubit;

  FavouriteCastBloc(this._repository, this._filterCubit)
      : super(const FavouriteCastState.initial([], [])) {
    on<_FetchedAll>(_onFavouriteCastFetched);
    on<_AddedFavourite>(_onFavouriteCastAdded);
    on<_RemovedFavouite>(_onFavouriteCastRemoved);
  }

  Future<void> _onFavouriteCastFetched(
    _FetchedAll event,
    Emitter<FavouriteCastState> emit,
  ) async {
    emit(FavouriteCastState.loadInProgress(state.casts, state.firstFiveItems));
    final failureOrRepos = await _repository.getFavouriteCasts(
      field: _filterCubit.state.field,
      value: _filterCubit.state.value,
    );
    final failureOrAllRepos = await _repository.getFavouriteCasts();
    emit(failureOrAllRepos.fold(
      (l) => FavouriteCastState.loadFailure(
        state.casts,
        state.allCasts,
        l,
      ),
      (r) {
        return FavouriteCastState.loadSuccess(state.casts, r);
      },
    ));
    emit(failureOrRepos.fold(
      (l) => FavouriteCastState.loadFailure(
        state.casts,
        state.allCasts,
        l,
      ),
      (r) {
        return FavouriteCastState.loadSuccess(r, state.allCasts);
      },
    ));
  }

  Future<void> _onFavouriteCastAdded(
    _AddedFavourite event,
    Emitter<FavouriteCastState> emit,
  ) async {
    final failureOrRepos = await _repository.saveCast(event.cast);
    failureOrRepos.fold(
      (l) {
        emit(FavouriteCastState.loadFailure(
          state.casts,
          state.allCasts,
          l,
        ));
      },
      (r) {
        add(const FavouriteCastEvent.fetchedAll());
      },
    );
  }

  Future<void> _onFavouriteCastRemoved(
    _RemovedFavouite event,
    Emitter<FavouriteCastState> emit,
  ) async {
    final failureOrRepos = await _repository.removeCast(event.cast);
    failureOrRepos.fold(
      (l) {
        emit(FavouriteCastState.loadFailure(
          state.casts,
          state.allCasts,
          l,
        ));
      },
      (r) {
        add(const FavouriteCastEvent.fetchedAll());
      },
    );
  }
}
