import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/paginated_data.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/cast.dart';
import 'cast_service.dart';
import 'extensions.dart';

class CastRepository {
  const CastRepository(this._service);

  final CastService _service;

  Future<Either<Failure, PaginatedData<List<Cast>>>> getCasts({
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
      final domain = res.data.characters;
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
