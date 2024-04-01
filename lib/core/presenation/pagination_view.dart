import 'package:flutter/material.dart';
import '../application/paginated_items/paginated_items_cubit.dart';
import 'app_colors.dart';

class PaginationView<T> extends StatelessWidget {
  final PaginatedItemsCubit<T> paginatedItemsCubit;

  final void Function(BuildContext context) getNextPage;
  final Future<void> Function(BuildContext context)? refresh;
  final Widget child;

  const PaginationView({
    super.key,
    required this.paginatedItemsCubit,
    required this.getNextPage,
    required this.child,
    this.refresh,
  });

  @override
  Widget build(BuildContext context) {
    final child = NotificationListener<ScrollNotification>(
      onNotification: (notifications) {
        final canLoadNextPage = paginatedItemsCubit.state.maybeMap(
          orElse: () => false,
          loadSuccess: (_) => _.isNextPageAvailable,
        );
        final metrics = notifications.metrics;
        final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
        if (canLoadNextPage && metrics.pixels >= limit) {
          getNextPage(context);
        }
        return false;
      },
      child: this.child,
    );
    return refresh != null
        ? RefreshIndicator(
            color: AppColors.primary,
            onRefresh: () async {
              await refresh!(context);
            },
            child: child,
          )
        : child;
  }
}
