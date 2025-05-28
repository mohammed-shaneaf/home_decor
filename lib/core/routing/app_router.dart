import 'package:flutter/material.dart';
import 'package:home_decor/core/routing/router_name.dart';
import 'package:home_decor/features/splash/views/splash_two_view.dart';
import 'package:home_decor/features/splash/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.splashone:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case RouterName.splashtwo:
      return MaterialPageRoute(builder: (context) => const SplashTwoView());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('404 - Page Not Found'))),
      );
  }
}
