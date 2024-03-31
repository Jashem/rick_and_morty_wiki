import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_text_theme.dart';
import 'image_assets.dart';

class TextTile extends StatelessWidget {
  const TextTile({
    super.key,
    required this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
    required this.title,
    required this.subtitle,
  });
  final String title;
  final VoidCallback onTap;
  final String subtitle;

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                ImageAssets.text_box,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextTheme.title4.copyWith(color: Colors.white),
                  ),
                  Text(
                    subtitle,
                    style: AppTextTheme.caption1Strong
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
