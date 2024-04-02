import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../cast/domain/cast.dart';
import '../../favourite_cast/application/favourite_cast_bloc.dart';
import 'image_assets.dart';

class CastFvouriteBox extends StatelessWidget {
  const CastFvouriteBox({super.key, required this.cast, required this.height});

  final Cast cast;
  final double height;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteCastBloc, FavouriteCastState>(
      builder: (context, state) {
        final isFavourite = state.isFavourite(cast.id);
        return InkWell(
          onTap: () {
            if (isFavourite) {
              context
                  .read<FavouriteCastBloc>()
                  .add(FavouriteCastEvent.removedFavourite(cast));
            } else {
              context
                  .read<FavouriteCastBloc>()
                  .add(FavouriteCastEvent.addedFavourite(cast));
            }
          },
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(isFavourite ? 0.4 : 0.1),
                borderRadius: BorderRadius.circular(2)),
            child: SvgPicture.asset(
              isFavourite ? ImageAssets.star_fill : ImageAssets.star,
              height: height,
            ),
          ),
        );
      },
    );
  }
}
