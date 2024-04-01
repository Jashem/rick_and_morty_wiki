import 'package:dio/dio.dart';

import '../../core/infrastructure/api_call_wrapper.dart';
import '../../core/infrastructure/exceptions.dart';
import 'cast_response_dto.dart';

class CastService {
  const CastService(this._dio);
  final Dio _dio;

  Future<CharactersDataDTO> getCharacters({
    int page = 1,
  }) async {
    var query = '''
                  query {
                    characters(page: $page) {
                      info {
                        count
                        pages
                      }
                      results {
                        id
                        name
                        image
                        status
                        type
                        species
                        gender
                        origin {
                          id
                          name
                        }
                        location {
                          id
                          name
                        }
                        episode {
                          id
                          name
                        }
                      }
                    }
                  }
                  ''';
    return apiCallWrapper(() async {
      final res = await _dio.post("", data: {"query": query});
      if (res.data["errors"] != null) {
        throw RestApiException(500, res.data["errors"][0]["message"]);
      }
      final data = CharactersDataDTO.fromJson(res.data);
      return data;
    });
  }
}
