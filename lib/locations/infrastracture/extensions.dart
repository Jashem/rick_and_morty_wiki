import '../domain/location.dart';
import 'location_dto.dart';

extension ListLocationX on List<LocationDTO> {
  List<Location> toDomain() => map((e) => e.toDomain()).toList();
}

extension ListLocationDTOX on List<Location> {
  List<LocationDTO> toDomain() => map((e) => e.toDTO()).toList();
}
