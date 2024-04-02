import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';

import '../../core/domain/failure.dart';
import '../../core/infrastructure/exceptions.dart';
import '../../cast/domain/cast.dart';
import '../../cast/infrastructure/extensions.dart';
import 'favourite_cast_service.dart';

class FavouriteCastRepository {
  const FavouriteCastRepository(this._service);

  final FavouriteCastService _service;

  Future<Either<Failure, List<Cast>>> getFavouriteCasts() async {
    try {
      final res = await _service.getFavourites();

      return right(res.toDomain());
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  Future<Either<Failure, List<Cast>>> saveCast(
      List<Cast> casts, Cast newCast) async {
    if (casts.firstWhereOrNull((element) => element.id == newCast.id) == null) {
      try {
        final updateRecord = [newCast, ...casts];
        final _ = await _service.saveFavourite(updateRecord.toDTO());
        return right(
          updateRecord,
        );
      } on AppException catch (e) {
        return left(Failure(message: e.message, code: e.errorCode));
      }
    }
    return left(Failure(message: "Item already added!"));
  }

  Future<Either<Failure, List<Cast>>> removeCast(
      List<Cast> casts, Cast newCast) async {
    final findex = casts.indexWhere((element) => element.id == newCast.id);
    if (findex != -1) {
      try {
        final updateRecord = List<Cast>.from(casts)..removeAt(findex);
        final _ = await _service.saveFavourite(updateRecord.toDTO());
        return right(
          updateRecord,
        );
      } on AppException catch (e) {
        return left(Failure(message: e.message, code: e.errorCode));
      }
    }
    return left(Failure(message: "Item already added!"));
  }
}
