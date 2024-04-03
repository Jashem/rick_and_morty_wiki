import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';

class ListHeader extends StatelessWidget {
  const ListHeader({
    super.key,
    required this.title,
    required this.onViewAllTap,
  });
  final String title;
  final VoidCallback onViewAllTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextTheme.body1Strong.copyWith(color: Colors.white),
          ),
          FilledButton(
            onPressed: onViewAllTap,
            style: FilledButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              visualDensity: const VisualDensity(vertical: -4, horizontal: -4),
            ),
            child: const Text(
              "View All",
              style: AppTextTheme.caption1Strong,
            ),
          ),
        ],
      ),
    );
  }
}
