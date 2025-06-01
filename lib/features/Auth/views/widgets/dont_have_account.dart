import 'package:flutter/material.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: AppStyles.f14Regular.copyWith(color: AppColors.black),
        ),
        Text(
          'Sign Up',
          style: AppStyles.f14Regular.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
