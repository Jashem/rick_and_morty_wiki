part of 'locations_carousal_cubit.dart';

@freezed
class LocationCarousalState with _$LocationCarousalState {
  const LocationCarousalState._();
  const factory LocationCarousalState.initial(List<Location> locations) =
      _Initial;
  const factory LocationCarousalState.loadInProgress(List<Location> locations) =
      _LoadInProgress;
  const factory LocationCarousalState.loadSuccess(List<Location> locations) =
      _LoadSuccess;
  const factory LocationCarousalState.loadFailure(
    List<Location> locations,
    Failure failure,
  ) = _LoadFailure;
}
