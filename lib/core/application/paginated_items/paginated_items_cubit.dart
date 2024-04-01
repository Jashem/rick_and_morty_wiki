import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';

import '../../domain/failure.dart';
import '../../domain/paginated_data.dart';

part 'paginated_items_state.dart';
part 'paginated_items_cubit.freezed.dart';

typedef RepositoryGetter<T> = Future<Either<Failure, PaginatedData<List<T>>>>
    Function(
  int page,
);

class PaginatedItemsCubit<T> extends Cubit<PaginatedItemsState<T>> {
  PaginatedItemsCubit()
      : super(const PaginatedItemsState.initial(PaginatedData(entity: [])));

  int _page = 1;

  @protected
  void resetState() {
    _page = 1;
    emit(const PaginatedItemsState.initial(PaginatedData(entity: [])));
  }

  @protected
  Future<void> getNextPage(
    RepositoryGetter<T> getter,
  ) async {
    emit(PaginatedItemsState.loadInProgress(state.items));

    final failureOrRepos = await getter(_page);
    emit(failureOrRepos.fold(
      (l) => PaginatedItemsState.loadFailure(
        state.items,
        l,
      ),
      (r) {
        _page++;
        return PaginatedItemsState.loadSuccess(
          r.copyWith(
            entity: [
              ...state.items.entity,
              ...r.entity,
            ],
          ),
          isNextPageAvailable: r.isNextPageAvailable ?? false,
        );
      },
    ));
  }
}
