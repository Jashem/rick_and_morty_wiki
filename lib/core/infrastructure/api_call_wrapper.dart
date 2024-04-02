import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dio_extensions.dart';
import 'package:flutter/services.dart' as s;
import 'exceptions.dart';

Future<T> apiCallWrapper<T>(Future<T> Function() apiCall) async {
  try {
    return await apiCall();
  } on DioException catch (e) {
    log(e.toString());
    log((e.response?.realUri).toString());
    if (e.isNoConnectionError) {
      throw NoInternetException();
    } else if (e.response != null) {
      log((e.response?.data).toString());
      throw RestApiException(
        e.response?.statusCode,
        e.response?.data['message'] ??
            (e.response?.statusCode == 401
                ? "Unauthenticated, Please login again!"
                : "Server Error"),
      );
    } else {
      throw RestApiException(1100, "Server Error");
    }
  } on FormatException catch (e, st) {
    log(e.toString());
    log(st.toString());
    throw JSONFormatException(1104, "JSON Parsing failed");
  } on s.PlatformException catch (e, st) {
    log(e.toString());
    log(st.toString());
    throw PlatformException(1106, e.toString());
  } catch (e, st) {
    debugPrint(st.toString());
    debugPrint(e.toString());
    throw UnknownException(1100, "Something went wrong!");
  }
}
