import 'package:dio/dio.dart';

import '../../core/infrastructure/api_call_wrapper.dart';
import '../../core/infrastructure/exceptions.dart';
import 'location_response_dto.dart';

class LocationService {
  const LocationService(this._dio);
  final Dio _dio;

  Future<LocationsDataDTO> getLocations({
    int page = 1,
    String? filterField,
    String? filterValue,
  }) async {
    final filter = (filterField != null && filterValue != null)
        ? 'filter: {$filterField: "$filterValue"}'
        : 'filter: {}';
    final query = '''
                  query {
                    locations(page: $page, $filter) {
                      info {
                        count
                        pages
                      }
                      results {
                        id
                        name
                      }
                    }
                  }
                  ''';
    return apiCallWrapper(() async {
      final res = await _dio.post("", data: {"query": query});
      if (res.data["errors"] != null) {
        throw RestApiException(500, res.data["errors"][0]["message"]);
      }
      final data = LocationsDataDTO.fromJson(res.data);
      return data;
    });
  }
}
