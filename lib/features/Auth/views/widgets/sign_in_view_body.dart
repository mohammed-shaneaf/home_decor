import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/core/utils/custom_button.dart';
import 'package:home_decor/features/Auth/views/forgot_password_view.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';
import 'package:home_decor/features/Auth/views/widgets/dont_have_account.dart';
import 'package:home_decor/features/Auth/views/widgets/login_form_operation.dart';
import 'package:home_decor/features/Auth/views/widgets/sign_in_welcome.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAuthAppBar(text: 'Log In'),
          50.verticalSpace,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SignInWelcome(),
                67.verticalSpace,
                LoginFormOperation(),
                47.verticalSpace,
                Center(
                  child: CustomButton(onPressed: () {}, text: 'Log In'),
                ),
                50.verticalSpace,
                DontHaveAnAccount(),
                GestureDetector(
                  onTap: () {
                    context.push(ForgotPasswordView());
                  },
                  child: Center(
                    child: Text('Forgot Password ? ', style: AppStyles.f14Bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
