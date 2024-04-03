part of 'episodes_carousal_cubit.dart';

@freezed
class EpisodeCarousalState with _$EpisodeCarousalState {
  const EpisodeCarousalState._();
  const factory EpisodeCarousalState.initial(List<Episode> episodes) = _Initial;
  const factory EpisodeCarousalState.loadInProgress(List<Episode> episodes) =
      _LoadInProgress;
  const factory EpisodeCarousalState.loadSuccess(List<Episode> episodes) =
      _LoadSuccess;
  const factory EpisodeCarousalState.loadFailure(
    List<Episode> episodes,
    Failure failure,
  ) = _LoadFailure;
}
