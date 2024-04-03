part of 'casts_carousal_cubit.dart';

@freezed
class CastCarousalState with _$CastCarousalState {
  const CastCarousalState._();
  const factory CastCarousalState.initial(List<Cast> casts) = _Initial;
  const factory CastCarousalState.loadInProgress(List<Cast> casts) =
      _LoadInProgress;
  const factory CastCarousalState.loadSuccess(List<Cast> casts) = _LoadSuccess;
  const factory CastCarousalState.loadFailure(
    List<Cast> casts,
    Failure failure,
  ) = _LoadFailure;
}
