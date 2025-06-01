import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class SignInWelcome extends StatelessWidget {
  const SignInWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Welcome',
          style: AppStyles.f20Bold.copyWith(fontFamily: 'Poppins'),
        ),
        11.verticalSpace,
        Text(
          'Please enter your details to proceed.',
          style: AppStyles.f14Regular,
        ),
      ],
    );
  }
}
