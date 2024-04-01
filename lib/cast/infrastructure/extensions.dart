import '../domain/cast.dart';
import 'cast_dto.dart';

extension ListCastX on List<CastDTO> {
  List<Cast> toDomain() => map((e) => e.toDomain()).toList();
}
