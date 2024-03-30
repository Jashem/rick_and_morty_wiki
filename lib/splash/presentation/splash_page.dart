import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/presenation/app_colors.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/extensions.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/image_assets.dart';
import '../../core/presenation/routes/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        context.router.pushAndPopUntil(
          const BottomNavRoute(),
          predicate: (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        alignment: Alignment.center,
        children: [
          const Positioned.fill(
            child: ColoredBox(color: AppColors.primary),
          ),
          Image.asset(
            ImageAssets.splash_background,
            height: context.screenHeight,
            width: context.screenWidth,
            fit: BoxFit.fill,
          ),
          Image.asset(
            ImageAssets.splash_thumbnail,
          ),
          Positioned(
            bottom: 24 + MediaQuery.of(context).padding.bottom,
            child: Column(
              children: [
                const CircularProgressIndicator(
                  color: AppColors.black,
                ),
                12.vGap,
                const Text("Loading", style: AppTextTheme.caption1Strong),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
