import 'package:flutter/material.dart';
import 'package:rick_and_morty_wiki/core/presenation/routes/app_router.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
