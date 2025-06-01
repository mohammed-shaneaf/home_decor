import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';

class AcceptTermsWidget extends StatelessWidget {
  const AcceptTermsWidget({
    super.key,
    required this.value,
    required this.onChanged,
    this.onTermsTap,
    this.onPrivacyTap,
    this.textColor,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPrivacyTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: value,
          onChanged: (_) => onChanged(!value),
          activeColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: AppStyles.f14Regular.copyWith(
                color: textColor ?? AppColors.black,
                height: 1.4,
              ),
              children: [
                const TextSpan(text: "I agree to the "),
                TextSpan(
                  text: "Terms & Conditions",
                  style: AppStyles.f14Bold.copyWith(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy Policy",
                  style: AppStyles.f14Bold.copyWith(
                    color: AppColors.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onPrivacyTap,
                ),
                const TextSpan(text: "."),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
