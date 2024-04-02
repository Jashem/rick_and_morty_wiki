part of 'favourite_cast_bloc.dart';

@freezed
class FavouriteCastEvent with _$FavouriteCastEvent {
  const factory FavouriteCastEvent.started() = _Started;
  const factory FavouriteCastEvent.fetchedAll() = _FetchedAll;
  const factory FavouriteCastEvent.removedFavourite(Cast cast) =
      _RemovedFavouite;
  const factory FavouriteCastEvent.addedFavourite(Cast cast) = _AddedFavourite;
}
