import '../../core/application/paginated_items/paginated_items_cubit.dart';
import '../domain/episode.dart';
import '../infrastructure/episode_repository.dart';
import 'episode_filter/episode_filter_cubit.dart';

class EpisodeCubit extends PaginatedItemsCubit<Episode> {
  EpisodeCubit(this._repository, this._filterCubit);

  final EpisodeRepository _repository;
  final EpisodeFilterCubit _filterCubit;

  Future<void> getFirstEpisodePage() async {
    super.resetState();
    await getNextEpisodePage();
  }

  Future<void> getNextEpisodePage() async {
    await super.getNextPage(
      (page) => _repository.getEpisodes(
        page: page,
        filterField: _filterCubit.state.field,
        filterValue: _filterCubit.state.value,
      ),
    );
  }
}
