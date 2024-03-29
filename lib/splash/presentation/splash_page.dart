import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_wiki/core/presenation/app_colors.dart';
import 'package:rick_and_morty_wiki/core/presenation/app_text_theme.dart';
import 'package:rick_and_morty_wiki/core/presenation/extensions.dart';
import 'package:rick_and_morty_wiki/core/presenation/gaps.dart';
import 'package:rick_and_morty_wiki/core/presenation/image_assets.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
