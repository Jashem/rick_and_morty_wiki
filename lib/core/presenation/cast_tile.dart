import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_text_theme.dart';
import 'image_assets.dart';

class CastTile extends StatelessWidget {
  const CastTile({
    super.key,
    required this.avatar,
    required this.onTap,
    required this.name,
    required this.isFavourite,
    required this.onFavouriteTap,
  });
  final String avatar;
  final VoidCallback onTap;
  final String name;
  final bool isFavourite;
  final ValueChanged<bool> onFavouriteTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Positioned.fill(
            child: SvgPicture.asset(
              ImageAssets.character_box,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 7, top: 7, right: 7, bottom: 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(2),
                  child: Image.network(
                    avatar,
                    height: 100,
                    width: 119,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  name,
                  style: AppTextTheme.title4.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: InkWell(
              onTap: () => onFavouriteTap(!isFavourite),
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(isFavourite ? 0.4 : 0.1),
                    borderRadius: BorderRadius.circular(2)),
                child: SvgPicture.asset(
                  isFavourite ? ImageAssets.star_fill : ImageAssets.star,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
