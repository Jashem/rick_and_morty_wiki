import '../domain/cast.dart';
import 'cast_dto.dart';

extension ListCastX on List<CastDTO> {
  List<Cast> toDomain() => map((e) => e.toDomain()).toList();
}

extension ListCastDTOX on List<Cast> {
  List<CastDTO> toDTO() => map((e) => e.toDTO()).toList();
}

extension ListCastDTOMAPX on List<dynamic> {
  List<CastDTO> toDTO() => map((e) =>
          CastDTO.fromJson(Map.castFrom<dynamic, dynamic, String, dynamic>(e)))
      .toList();
}
