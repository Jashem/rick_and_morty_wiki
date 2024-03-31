import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextTheme.title2.copyWith(color: AppColors.secondary),
    );
  }
}
