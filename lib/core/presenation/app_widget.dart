import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cast/application/cast_cubit.dart';
import '../../cast/infrastructure/cast_repository.dart';
import '../../favourite_cast/application/favourite_cast_bloc.dart';
import '../../favourite_cast/infrastructure/favourite_cast_repository.dart';
import '../shared/dependency_injection.dart';
import 'routes/app_router.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              CastCubit(di.get<CastRepository>())..getFirstCstPage(),
        ),
        BlocProvider(
          create: (context) =>
              FavouriteCastBloc(di.get<FavouriteCastRepository>())
                ..add(const FavouriteCastEvent.fetchedAll()),
        ),
      ],
      child: MaterialApp.router(
        title: 'Rick And Morty Wiki',
        theme: _setUpThemeData(),
        debugShowCheckedModeBanner: false,
        builder: (context, widget) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MediaQuery(
              ///Setting font does not change with system font size
              data: MediaQuery.of(context)
                  .copyWith(textScaler: const TextScaler.linear(1.0)),
              child: widget ?? const SizedBox(),
            ),
          );
        },
        routerConfig: _appRouter.config(),
      ),
    );
  }

  ThemeData _setUpThemeData() {
    return ThemeData(
      fontFamily: 'PlusJakartaSans',
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.white,
    );
  }
}
