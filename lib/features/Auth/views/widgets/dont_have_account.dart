import 'package:flutter/material.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/features/Auth/views/sign_up_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppStyles.f14Regular.copyWith(color: AppColors.black),
        ),
        TextButton(
          onPressed: () {
            context.push(SignUpView());
          },
          style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
          child: Text(
            'Sign Up',
            style: AppStyles.f14Regular.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
