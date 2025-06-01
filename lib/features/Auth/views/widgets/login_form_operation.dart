import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/core/utils/custom_text_form_field.dart';

class LoginFormOperation extends StatelessWidget {
  const LoginFormOperation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Username Or Email', style: AppStyles.f15Medium),
        8.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Email Or Username'),
        23.verticalSpace,
        Text('Password', style: AppStyles.f15Medium),
        8.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Password', obscureText: true),
      ],
    );
  }
}
