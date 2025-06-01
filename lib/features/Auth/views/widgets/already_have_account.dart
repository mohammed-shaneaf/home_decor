import 'package:flutter/material.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/features/Auth/views/sign_in_view.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: AppStyles.f14Regular.copyWith(color: AppColors.black),
        ),
        TextButton(
          onPressed: () {
            context.push(SignInView());
          },
          style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
          child: Text(
            'Sign In',
            style: AppStyles.f14Regular.copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
