import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class ForgotPasswordHeader extends StatelessWidget {
  const ForgotPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Reset Password?',
            style: AppStyles.f20Bold.copyWith(fontFamily: 'Poppins'),
          ),
          SizedBox(height: 8.h),
          Text(
            'Enter Your Email Please To Reset Your Password',
            style: AppStyles.f14Regular.copyWith(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
