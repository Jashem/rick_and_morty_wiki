import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../cast/infrastructure/cast_repository.dart';
import '../../cast/infrastructure/cast_service.dart';
import '../../episodes/infrastructure/episode_repository.dart';
import '../../episodes/infrastructure/episode_service.dart';
import '../../favourite_cast/infrastructure/favourite_cast_repository.dart';
import '../../favourite_cast/infrastructure/favourite_cast_service.dart';
import '../infrastructure/constants.dart';

GetIt di = GetIt.instance;

void setupDI() {
  di
    ..registerSingleton(Dio(BaseOptions(baseUrl: baseURI)))
    ..registerSingleton(CastService(di.get()))
    ..registerSingleton(CastRepository(di.get()))
    ..registerSingleton(EpisodeService(di.get()))
    ..registerSingleton(EpisodeRepository(di.get()))
    ..registerSingletonAsync(() => SharedPreferences.getInstance())
    ..registerSingleton(FavouriteCastService(di.getAsync()))
    ..registerSingleton(FavouriteCastRepository(di.get()));
}
