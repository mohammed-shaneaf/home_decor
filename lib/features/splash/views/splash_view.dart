import 'package:flutter/material.dart';
import 'package:home_decor/core/utils/app_colors.dart';
import 'package:home_decor/features/splash/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SplashViewBody(),
    );
  }
}
