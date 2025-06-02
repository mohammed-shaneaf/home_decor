import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/core/utils/custom_text_form_field.dart';

class SetPasswordOperations extends StatelessWidget {
  const SetPasswordOperations({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: AppStyles.f15Medium),
            8.verticalSpace,
            CustomTextFormField(
              hintText: 'Enter Your Password',
              obscureText: true,
            ),
            16.verticalSpace,
            Text('Confirm Password', style: AppStyles.f15Medium),
            8.verticalSpace,
            CustomTextFormField(
              hintText: 'Confirm Your Password',
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
