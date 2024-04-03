import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_colors.dart';
import 'app_text_theme.dart';
import 'gaps.dart';
import 'image_assets.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    super.key,
    required this.filter,
    required this.onFilterChanged,
    required this.onValueChanged,
    required this.onSearchTapped,
    required this.selectedFilter,
    required this.controller,
  });
  final TextEditingController controller;
  final List<String> filter;
  final String selectedFilter;
  final ValueChanged<String> onFilterChanged;
  final ValueChanged<String> onValueChanged;
  final VoidCallback onSearchTapped;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: SvgPicture.asset(ImageAssets.search_bar),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              PopupMenuButton(
                color: AppColors.secondary,
                offset: const Offset(0, 58),
                itemBuilder: (context) => filter
                    .map(
                      (e) => PopupMenuItem(
                        onTap: () {
                          onFilterChanged(e);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(selectedFilter == e
                                ? ImageAssets.radio_fill
                                : ImageAssets.radio),
                            8.hGap,
                            Text(
                              e,
                              style: AppTextTheme.caption1Strong
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 12,
                    left: 12,
                    right: 8,
                    bottom: 12,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        selectedFilter,
                        style: AppTextTheme.caption1Strong
                            .copyWith(color: Colors.white),
                      ),
                      32.hGap,
                      SvgPicture.asset(
                        ImageAssets.arrow_down,
                      ),
                    ],
                  ),
                ),
              ),
              24.hGap,
              Expanded(
                child: TextField(
                  controller: controller,
                  style: AppTextTheme.body2.copyWith(
                    color: const Color.fromRGBO(134, 134, 134, 1),
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: "Search",
                    hintStyle: AppTextTheme.body2.copyWith(
                      color: const Color.fromRGBO(134, 134, 134, 1),
                    ),
                  ),
                  onChanged: onValueChanged,
                  onEditingComplete: onSearchTapped,
                ),
              ),
              InkWell(
                onTap: onSearchTapped,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(ImageAssets.search),
                ),
              ),
              8.hGap,
            ],
          ),
        ),
      ],
    );
  }
}
