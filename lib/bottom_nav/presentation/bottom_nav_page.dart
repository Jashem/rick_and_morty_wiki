import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'bottom_nav_bar.dart';
import '../../core/presenation/image_assets.dart';
import '../../core/presenation/routes/app_router.dart';

@RoutePage()
class BottomNavPage extends StatelessWidget {
  const BottomNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(
      homeIndex: 0,
      physics: const NeverScrollableScrollPhysics(),
      animatePageTransition: false,
      routes: const [
        HomeRoute(),
        CastRouter(),
        EpisodesRoute(),
        LocationsRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBodyBehindAppBar: true,
          extendBody: true,
          backgroundColor: Colors.transparent,
          body: child,
          bottomNavigationBar: BottomNavBar(
            items: [
              BottomNavItem(
                iconPath: ImageAssets.home,
                title: "Home",
              ),
              BottomNavItem(
                iconPath: ImageAssets.cast,
                title: "Cast",
              ),
              BottomNavItem(
                iconPath: ImageAssets.episodes,
                title: "Episodes",
              ),
              BottomNavItem(
                iconPath: ImageAssets.locations,
                title: "Locations",
              ),
            ],
            selectedIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
