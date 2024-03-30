import 'package:auto_route/auto_route.dart';
import '../../../bottom_nav/presentation/bottom_nav_page.dart';

import '../../../cast/presentation/cast_page.dart';
import '../../../episodes/presentation/episodes_page.dart';
import '../../../home/presentation/home_page.dart';
import '../../../locations/presentation/locations_page.dart';
import '../../../splash/presentation/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),
        AutoRoute(page: BottomNavRoute.page, path: "/", children: [
          AutoRoute(page: HomeRoute.page, path: "home"),
          AutoRoute(page: CastRoute.page, path: "cast"),
          AutoRoute(page: EpisodesRoute.page, path: "episodes"),
          AutoRoute(page: LocationsRoute.page, path: "locations"),
        ]),
      ];
}
