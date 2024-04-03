import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../cast/domain/cast.dart';
import '../../cast/infrastructure/extensions.dart';
import 'favourite_cast_service.dart';

// "name",
// "status",
// "species",
// "type",
// "gender",
class FavouriteCastRepository {
  const FavouriteCastRepository(this._service);

  final FavouriteCastService _service;

  Future<Either<Failure, List<Cast>>> getFavouriteCasts(
      {String? field, String? value}) async {
    try {
      switch (field) {
        case "name":
          final res = await _service.getFavouritesByName(value);
          return right(res.toDomain());
        case "status":
          final res = await _service.getFavouritesByStatus(value);
          return right(res.toDomain());
        case "species":
          final res = await _service.getFavouritesBySpecies(value);
          return right(res.toDomain());
        case "type":
          final res = await _service.getFavouritesByType(value);
          return right(res.toDomain());
        case "gender":
          final res = await _service.getFavouritesByGender(value);
          return right(res.toDomain());
        default:
          final res = await _service.getFavourites();
          return right(res.toDomain());
      }
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, Unit>> saveCast(
    Cast newCast, {
    String? field,
    String? value,
  }) async {
    try {
      final favourites = await _service.getFavourites();
      if (favourites.firstWhereOrNull((element) => element.id == newCast.id) ==
          null) {
        final updateRecord = [newCast.toDTO(), ...favourites];
        final _ = await _service.saveFavourite(updateRecord);
        return right(unit);
      }
      return left(Failure(message: "Item already added!"));
    } on AppException catch (e) {
      return left(Failure(message: e.message, code: e.errorCode));
    }
  }

  Future<Either<Failure, Unit>> removeCast(
    Cast newCast, {
    String? field,
    String? value,
  }) async {
    try {
      final favourites = await _service.getFavourites();
      final findex =
          favourites.indexWhere((element) => element.id == newCast.id);
      if (findex != -1) {
        final updateRecord = favourites..removeAt(findex);
        final _ = await _service.saveFavourite(updateRecord);
        return right(unit);
      }
      return left(Failure(message: "Item notf found!"));
    } on AppException catch (e) {
      return left(Failure(message: e.message, code: e.errorCode));
    }
  }
}
