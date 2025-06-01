import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class CustomAuthAppBar extends StatelessWidget {
  const CustomAuthAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        112.horizontalSpace,
        Text(
          text,
          textAlign: TextAlign.center,
          style: AppStyles.f20Bold.copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
