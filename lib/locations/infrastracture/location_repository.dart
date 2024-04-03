import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/domain/paginated_data.dart';
import '../../core/infrastructure/exceptions.dart';
import '../domain/location.dart';
import 'location_service.dart';
import 'extensions.dart';

class LocationRepository {
  const LocationRepository(this._service);

  final LocationService _service;

  Future<Either<Failure, PaginatedData<List<Location>>>> getLocations({
    int page = 1,
    String? filterField,
    String? filterValue,
  }) async {
    try {
      final res = await _service.getLocations(
        page: page,
        filterField: filterField,
        filterValue: filterValue,
      );
      final domain = res.data.locations;
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
