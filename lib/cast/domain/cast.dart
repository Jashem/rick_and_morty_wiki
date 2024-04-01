import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/info.dart';
import '../../episodes/domain/episode.dart';
import '../../locations/domain/location.dart';

part 'cast.freezed.dart';

@freezed
class Cast with _$Cast {
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
}

@freezed
class Casts with _$Casts {
  const Casts._();
  factory Casts({required Info info, required List<Cast> results}) = _Casts;
}
