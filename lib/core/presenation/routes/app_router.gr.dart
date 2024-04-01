// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BottomNavRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BottomNavPage(),
      );
    },
    CastDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CastDetailsPage(),
      );
    },
    CastRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CastPage(),
      );
    },
    CastRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CastRouterPage(),
      );
    },
    EpisodesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EpisodesPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LocationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
  };
}

/// generated route for
/// [BottomNavPage]
class BottomNavRoute extends PageRouteInfo<void> {
  const BottomNavRoute({List<PageRouteInfo>? children})
      : super(
          BottomNavRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CastDetailsPage]
class CastDetailsRoute extends PageRouteInfo<void> {
  const CastDetailsRoute({List<PageRouteInfo>? children})
      : super(
          CastDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CastDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CastPage]
class CastRoute extends PageRouteInfo<void> {
  const CastRoute({List<PageRouteInfo>? children})
      : super(
          CastRoute.name,
          initialChildren: children,
        );

  static const String name = 'CastRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CastRouterPage]
class CastRouter extends PageRouteInfo<void> {
  const CastRouter({List<PageRouteInfo>? children})
      : super(
          CastRouter.name,
          initialChildren: children,
        );

  static const String name = 'CastRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EpisodesPage]
class EpisodesRoute extends PageRouteInfo<void> {
  const EpisodesRoute({List<PageRouteInfo>? children})
      : super(
          EpisodesRoute.name,
          initialChildren: children,
        );

  static const String name = 'EpisodesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LocationsPage]
class LocationsRoute extends PageRouteInfo<void> {
  const LocationsRoute({List<PageRouteInfo>? children})
      : super(
          LocationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
