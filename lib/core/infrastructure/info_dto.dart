import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/info.dart';

part 'info_dto.freezed.dart';
part 'info_dto.g.dart';

@freezed
class InfoDTO with _$InfoDTO {
  const InfoDTO._();

  factory InfoDTO({
    int? count,
    int? pages,
  }) = _InfoDTO;

  factory InfoDTO.fromJson(Map<String, dynamic> json) =>
      _$InfoDTOFromJson(json);

  Info toDomain() => Info(count: count ?? 0, pages: pages ?? 1);
}
