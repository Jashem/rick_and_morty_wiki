part of 'favourite_cast_bloc.dart';

@freezed
class FavouriteCastState with _$FavouriteCastState {
  const FavouriteCastState._();
  const factory FavouriteCastState.initial(
      List<Cast> casts, List<Cast> allCasts) = _Initial;
  const factory FavouriteCastState.loadInProgress(
      List<Cast> casts, List<Cast> allCasts) = _LoadInProgress;
  const factory FavouriteCastState.loadSuccess(
      List<Cast> casts, List<Cast> allCasts) = _LoadSuccess;
  const factory FavouriteCastState.loadFailure(
    List<Cast> casts,
    List<Cast> allCasts,
    Failure failure,
  ) = _LoadFailure;

  bool isFavourite(String id) {
    final res = allCasts.firstWhereOrNull((element) => element.id == id);
    return res != null;
  }

  List<Cast> get firstFiveItems =>
      allCasts.sublist(0, allCasts.length < 5 ? allCasts.length : 5);
}
