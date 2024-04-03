import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../cast/domain/cast.dart';
import 'app_text_theme.dart';
import 'cast_favorite_box.dart';
import 'image_assets.dart';
import 'routes/app_router.dart';

class CastTile extends StatelessWidget {
  const CastTile({
    super.key,
    required this.cast,
    this.padding = const EdgeInsets.only(left: 7, top: 7, right: 7, bottom: 6),
  });
  final Cast cast;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context
            .navigateTo(CastRouter(children: [CastDetailsRoute(cast: cast)]));
      },
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
                      cast.image,
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
                      cast.name,
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
              child: CastFvouriteBox(
                height: constraints.maxHeight * 0.09,
                cast: cast,
              ),
            ),
          ],
        );
      }),
    );
  }
}
