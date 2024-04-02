part of 'favourite_cast_bloc.dart';

@freezed
class FavouriteCastState with _$FavouriteCastState {
  const FavouriteCastState._();
  const factory FavouriteCastState.initial(List<Cast> casts) = _Initial;
  const factory FavouriteCastState.loadInProgress(List<Cast> casts) =
      _LoadInProgress;
  const factory FavouriteCastState.loadSuccess(List<Cast> casts) = _LoadSuccess;
  const factory FavouriteCastState.loadFailure(
    List<Cast> casts,
    Failure failure,
  ) = _LoadFailure;

  bool isFavourite(String id) {
    final res = casts.firstWhereOrNull((element) => element.id == id);
    return res != null;
  }

  List<Cast> get firstFiveItems =>
      casts.sublist(0, casts.length < 5 ? casts.length : 5);
}
