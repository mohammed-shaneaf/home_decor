import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';
import 'package:home_decor/features/Auth/views/widgets/forgot_Password_form.dart';
import 'package:home_decor/features/Auth/views/widgets/forgot_password_header.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAuthAppBar(text: 'Forgot Password'),
              SizedBox(height: 50.h),
              const ForgotPasswordHeader(),
              SizedBox(height: 30.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 40.h),
                decoration: BoxDecoration(
                  color: const Color(0xFFFEEFE6),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.r),
                  ),
                ),
                child: const ForgotPasswordForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
