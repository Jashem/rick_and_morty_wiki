import 'package:flutter/material.dart';
import 'image_assets.dart';

import 'extensions.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
