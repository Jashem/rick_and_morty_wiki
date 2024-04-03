import 'package:dio/dio.dart';

import '../../core/infrastructure/api_call_wrapper.dart';
import '../../core/infrastructure/exceptions.dart';
import 'episode_response_dto.dart';

class EpisodeService {
  const EpisodeService(this._dio);
  final Dio _dio;

  Future<EpisodesDataDTO> getCharacters({
    int page = 1,
    String? filterField,
    String? filterValue,
  }) async {
    final filter = (filterField != null && filterValue != null)
        ? 'filter: {$filterField: "$filterValue"}'
        : 'filter: {}';
    final query = '''
                  query {
                    episodes(page: $page, $filter) {
                      info {
                        count
                        pages
                      }
                      results {
                        id
                        name
                        episode
                      }
                    }
                  }
                  ''';
    return apiCallWrapper(() async {
      final res = await _dio.post("", data: {"query": query});
      if (res.data["errors"] != null) {
        throw RestApiException(500, res.data["errors"][0]["message"]);
      }
      final data = EpisodesDataDTO.fromJson(res.data);
      return data;
    });
  }
}
