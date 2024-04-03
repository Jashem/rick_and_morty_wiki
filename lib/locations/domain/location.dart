import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/domain/info.dart';
import '../infrastracture/location_dto.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();
  factory Location({
    required String id,
    required String name,
  }) = _Location;

  LocationDTO toDTO() => LocationDTO(name: name);
}

@freezed
class Locations with _$Locations {
  const Locations._();
  factory Locations({required Info info, required List<Location> results}) =
      _Locations;
}
