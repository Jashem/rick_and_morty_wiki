import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/infrastructure/info_dto.dart';
import '../domain/cast.dart';
import 'cast_dto.dart';
import 'extensions.dart';

part 'cast_response_dto.freezed.dart';
part 'cast_response_dto.g.dart';

@freezed
class CharactersDataDTO with _$CharactersDataDTO {
  factory CharactersDataDTO({
    required CharactersResponseDTO data,
  }) = _CharactersDataDTO;

  factory CharactersDataDTO.fromJson(Map<String, dynamic> json) =>
      _$CharactersDataDTOFromJson(json);
}

@freezed
class CharactersResponseDTO with _$CharactersResponseDTO {
  factory CharactersResponseDTO({
    required CastsDTO characters,
  }) = _CharactersResponseDTO;

  factory CharactersResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseDTOFromJson(json);
}

@freezed
class CastsDTO with _$CastsDTO {
  const CastsDTO._();
  factory CastsDTO({required InfoDTO info, required List<CastDTO> results}) =
      _CastsDTO;

  factory CastsDTO.fromJson(Map<String, dynamic> json) =>
      _$CastsDTOFromJson(json);

  Casts toDomain() => Casts(info: info.toDomain(), results: results.toDomain());
}
