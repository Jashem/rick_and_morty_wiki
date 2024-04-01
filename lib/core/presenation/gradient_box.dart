import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'image_assets.dart';

class GradientBox extends StatelessWidget {
  const GradientBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset(
            ImageAssets.rectangle_box,
            fit: BoxFit.fill,
          ),
        ),
        child,
      ],
    );
  }
}
