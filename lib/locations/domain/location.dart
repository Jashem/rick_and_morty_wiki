import 'package:freezed_annotation/freezed_annotation.dart';

import '../infrastracture/location_dto.dart';

part 'location.freezed.dart';

@freezed
class Location with _$Location {
  const Location._();
  factory Location({
    required String name,
  }) = _Location;

  LocationDTO toDTO() => LocationDTO(name: name);
}
