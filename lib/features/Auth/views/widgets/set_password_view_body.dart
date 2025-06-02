import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/utils/custom_button.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';
import 'package:home_decor/features/Auth/views/widgets/set_password_header.dart';
import 'package:home_decor/features/Auth/views/widgets/set_password_operations.dart';

class SetPasswordViewBody extends StatelessWidget {
  const SetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAuthAppBar(text: 'Set Password'),
        50.verticalSpace,
        SetPasswordHeader(),
        54.verticalSpace,
        SetPasswordOperations(),
        50.verticalSpace,
        CustomButton(
          onPressed: () {},
          text: 'Reset Password',
          textColor: AppColors.vinous,
        ),
      ],
    );
  }
}
