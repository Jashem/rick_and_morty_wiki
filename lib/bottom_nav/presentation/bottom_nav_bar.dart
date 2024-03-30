import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/presenation/app_text_theme.dart';
import '../../core/presenation/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onTap,
  });

  final List<BottomNavItem> items;
  final int selectedIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.grey),
        ),
      ),
      child: BottomNavigationBar(
          backgroundColor: AppColors.black,
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle:
              AppTextTheme.caption1Strong.copyWith(color: Colors.white),
          selectedLabelStyle:
              AppTextTheme.caption1Strong.copyWith(color: AppColors.primary),
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.white,
          onTap: onTap,
          items: items
              .mapIndexed(
                (index, element) => BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: SvgPicture.asset(
                      element.iconPath,
                      height: 20,
                      colorFilter: index == selectedIndex
                          ? const ColorFilter.mode(
                              AppColors.primary, BlendMode.srcIn)
                          : const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                    ),
                  ),
                  label: element.title,
                  backgroundColor: AppColors.black,
                ),
              )
              .toList()),
    );
  }
}

class BottomNavItem {
  const BottomNavItem({
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;
}
