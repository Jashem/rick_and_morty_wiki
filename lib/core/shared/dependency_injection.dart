import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../cast/infrastructure/cast_repository.dart';
import '../../cast/infrastructure/cast_service.dart';
import '../infrastructure/constants.dart';

GetIt di = GetIt.instance;

void setupDI() {
  di
    ..registerSingleton(Dio(BaseOptions(baseUrl: baseURI)))
    ..registerSingleton(CastService(di.get()))
    ..registerSingleton(CastRepository(di.get()));
}
