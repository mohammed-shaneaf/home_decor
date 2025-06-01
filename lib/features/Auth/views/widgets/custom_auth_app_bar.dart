import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back, color: AppColors.black, size: 24.sp),
            ),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.f20Bold.copyWith(color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
