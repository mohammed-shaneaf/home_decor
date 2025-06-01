import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/utils/custom_button.dart';
import 'package:home_decor/features/Auth/views/widgets/accept_terms_and_conditations.dart';
import 'package:home_decor/features/Auth/views/widgets/already_have_account.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';
import 'package:home_decor/features/Auth/views/widgets/sign_up_form_opearion.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  bool isAccepted = false;

  void _onSignUpPressed() {
    if (!isAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("You must accept the Terms & Conditions to continue."),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAuthAppBar(text: 'Create Account'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SignUpFormOperations(),
                24.verticalSpace,
                AcceptTermsWidget(
                  value: isAccepted,
                  onChanged: (value) {
                    setState(() {
                      isAccepted = value ?? false;
                    });
                  },
                ),
                24.verticalSpace,
                CustomButton(onPressed: () {}, text: 'Sign Up'),
                16.verticalSpace,
                AlreadyHaveAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
