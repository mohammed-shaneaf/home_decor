import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/routing/app_router.dart';
import 'package:home_decor/core/routing/router_name.dart';

class HomeDecor extends StatelessWidget {
  const HomeDecor({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: RouterName.splashone,
      ),
    );
  }
}
