import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/paginated_data.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/episode.dart';
import 'episode_service.dart';
import 'extensions.dart';

class EpisodeRepository {
  const EpisodeRepository(this._service);

  final EpisodeService _service;

  Future<Either<Failure, PaginatedData<List<Episode>>>> getEpisodes({
    int page = 1,
    String? filterField,
    String? filterValue,
  }) async {
    try {
      final res = await _service.getCharacters(
        page: page,
        filterField: filterField,
        filterValue: filterValue,
      );
      final domain = res.data.episodes;
      return right(
        PaginatedData(
          entity: domain.results.toDomain(),
          maxPage: domain.info.pages,
          isNextPageAvailable: page < domain.info.toDomain().pages,
        ),
      );
    } on AppException catch (e) {
      return left(Failure(message: e.message, code: e.errorCode));
    }
  }
}
