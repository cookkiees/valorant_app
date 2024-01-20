import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

PageTransitionsTheme get getPageTransitionsTheme {
  final defaultTransitions = {
    TargetPlatform.android: const CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: const CupertinoPageTransitionsBuilder(),
  };

  final transitionsMap = kIsWeb
      ? {
          for (final platform in TargetPlatform.values)
            platform: const NoTransitionsBuilder()
        }
      : defaultTransitions;

  return PageTransitionsTheme(builders: transitionsMap);
}

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T>? route,
    BuildContext? context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget? child,
  ) {
    return child!;
  }
}
