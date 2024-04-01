import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'app_colors.dart';
import 'image_assets.dart';

import 'extensions.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      backgroundColor: AppColors.black,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: context.router.canPop()
            ? IconButton(
                onPressed: () => context.back(),
                icon: SvgPicture.asset(ImageAssets.back))
            : const SizedBox(),
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
      body: Stack(
        children: [
          Image.asset(
            ImageAssets.page_background,
            width: context.screenWidth,
            height: context.screenHeight,
            fit: BoxFit.fill,
          ),
          SafeArea(
            child: body,
          ),
        ],
      ),
    );
  }
}
