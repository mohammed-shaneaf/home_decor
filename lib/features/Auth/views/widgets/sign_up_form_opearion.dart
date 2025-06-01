import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/core/utils/custom_text_form_field.dart';

class SignUpFormOperations extends StatelessWidget {
  const SignUpFormOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        Text('Full Name', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Full Name'),
        16.verticalSpace,
        Text('Email', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Email'),
        16.verticalSpace,
        Text('Mobile Phone', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Phone'),
        16.verticalSpace,
        Text('Data Of Birth', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(hintText: 'DD / MM / YYYY'),
        16.verticalSpace,
        Text('Password', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(hintText: 'Enter Your Password', obscureText: true),
        16.verticalSpace,
        Text('Confirm Password', style: AppStyles.f15Medium),
        6.verticalSpace,
        CustomTextFormField(
          hintText: 'Cofirm Your Password',
          obscureText: true,
        ),
      ],
    );
  }
}
