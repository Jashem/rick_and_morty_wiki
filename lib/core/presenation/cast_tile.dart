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
    this.padding = const EdgeInsets.only(left: 7, top: 7, right: 7, bottom: 6),
  });
  final String avatar;
  final VoidCallback onTap;
  final String name;
  final bool isFavourite;
  final ValueChanged<bool> onFavouriteTap;
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
                ImageAssets.character_box,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.network(
                      avatar,
                      height: constraints.maxHeight * 0.73,
                      width: constraints.maxWidth == double.infinity
                          ? 119
                          : constraints.maxWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24),
                    child: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextTheme.title4.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: constraints.maxHeight * 0.1,
              left: constraints.maxHeight * 0.1,
              child: InkWell(
                onTap: () => onFavouriteTap(!isFavourite),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(isFavourite ? 0.4 : 0.1),
                      borderRadius: BorderRadius.circular(2)),
                  child: SvgPicture.asset(
                    isFavourite ? ImageAssets.star_fill : ImageAssets.star,
                    height: constraints.maxHeight * 0.09,
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
