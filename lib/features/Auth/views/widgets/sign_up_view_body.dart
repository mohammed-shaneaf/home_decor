import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';
import 'package:home_decor/features/Auth/views/widgets/sign_up_form_opearion.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAuthAppBar(text: 'Create Account '),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [SignUpFormOperations(), 24.verticalSpace],
            ),
          ),
        ],
      ),
    );
  }
}
