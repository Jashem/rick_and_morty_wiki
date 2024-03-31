import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/presenation/app_colors.dart';
import '../../core/presenation/page_scaffold.dart';
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
        CastRoute(),
        EpisodesRoute(),
        LocationsRoute(),
      ],
      builder: (context, child, pageController) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: AppColors.black,
          appBar: AppBar(
            centerTitle: true,
            title: SvgPicture.asset(ImageAssets.logo),
            backgroundColor: AppColors.black.withOpacity(0.05),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(13),
              child: Container(
                padding: const EdgeInsets.only(top: 12),
                height: 1,
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
          body: PageScaffold(body: child),
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
