import 'package:flutter/material.dart';
import 'package:home_decor/core/routing/app_router.dart';
import 'package:home_decor/core/routing/router_name.dart';

class HomeDecor extends StatelessWidget {
  const HomeDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: RouterName.splash,
    );
  }
}
