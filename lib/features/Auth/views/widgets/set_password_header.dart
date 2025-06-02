import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class SetPasswordHeader extends StatelessWidget {
  const SetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 34.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Change Your Password',
            style: AppStyles.f20Bold.copyWith(fontFamily: 'Poppins'),
          ),
          SizedBox(height: 8.h),
          Text(
            'Enter A New Password And Make it Hard',
            style: AppStyles.f14Regular.copyWith(color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}
