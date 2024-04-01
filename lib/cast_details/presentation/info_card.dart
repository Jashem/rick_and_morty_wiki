import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/gaps.dart';
import '../../core/presenation/gradient_box.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.iconPath,
    required this.title,
    this.subtitle,
    this.subtitleWidget,
  }) : assert(subtitle != null || subtitleWidget != null);

  final String iconPath;
  final String title;
  final String? subtitle;
  final Widget? subtitleWidget;

  @override
  Widget build(BuildContext context) {
    return GradientBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(iconPath),
            12.vGap,
            Text(
              title,
              style: AppTextTheme.title4.copyWith(
                color: Colors.white,
              ),
            ),
            if (subtitle != null)
              Text(
                subtitle!,
                style: AppTextTheme.body1.copyWith(
                  color: Colors.white,
                ),
              ),
            if (subtitleWidget != null) subtitleWidget!,
          ],
        ),
      ),
    );
  }
}
