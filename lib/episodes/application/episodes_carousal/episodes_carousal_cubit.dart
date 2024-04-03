import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/failure.dart';
import '../../domain/episode.dart';
import '../../infrastructure/episode_repository.dart';

part 'episodes_carousal_state.dart';
part 'episodes_carousal_cubit.freezed.dart';

class EpisodeCarousalCubit extends Cubit<EpisodeCarousalState> {
  EpisodeCarousalCubit(this._repository)
      : super(const EpisodeCarousalState.initial([]));
  final EpisodeRepository _repository;

  Future<void> fetchInitialEpisodes() async {
    emit(EpisodeCarousalState.loadInProgress(state.episodes));
    final failureOrRepos = await _repository.getEpisodes();
    emit(failureOrRepos.fold(
      (l) => EpisodeCarousalState.loadFailure(
        state.episodes,
        l,
      ),
      (r) {
        return EpisodeCarousalState.loadSuccess(
            r.entity.sublist(0, r.entity.length < 5 ? r.entity.length : 5));
      },
    ));
  }
}
