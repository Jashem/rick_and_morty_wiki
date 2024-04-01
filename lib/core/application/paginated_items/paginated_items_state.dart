part of 'paginated_items_cubit.dart';

@freezed
class PaginatedItemsState<T> with _$PaginatedItemsState<T> {
  const PaginatedItemsState._();
  const factory PaginatedItemsState.initial(PaginatedData<List<T>> items) =
      _Initial;
  const factory PaginatedItemsState.loadInProgress(
    PaginatedData<List<T>> items,
  ) = _LoadInProgress;
  const factory PaginatedItemsState.loadSuccess(
    PaginatedData<List<T>> items, {
    required bool isNextPageAvailable,
  }) = _LoadSuccess;
  const factory PaginatedItemsState.loadFailure(
    PaginatedData<List<T>> items,
    Failure failure,
  ) = _LoadFailure;
}
