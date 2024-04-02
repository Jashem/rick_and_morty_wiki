import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/info.dart';
import '../../episodes/domain/episode.dart';
import '../../episodes/infrastructure/extensions.dart';
import '../../locations/domain/location.dart';
import '../infrastructure/cast_dto.dart';

part 'cast.freezed.dart';

@freezed
class Cast with _$Cast {
  const Cast._();
  factory Cast({
    required String id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required Location origin,
    required Location location,
    required List<Episode> episode,
    required String image,
  }) = _Cast;

  CastDTO toDTO() => CastDTO(
        id: id,
        episode: episode.toDTO(),
        gender: gender,
        image: image,
        location: location.toDTO(),
        name: name,
        origin: origin.toDTO(),
        species: species,
        status: status,
        type: type,
      );
}

@freezed
class Casts with _$Casts {
  const Casts._();
  factory Casts({required Info info, required List<Cast> results}) = _Casts;
}
