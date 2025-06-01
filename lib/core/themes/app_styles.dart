import 'package:flutter/material.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/widgets/font_weight_helper.dart';

abstract class AppStyles {
  static const TextStyle f58SemiBold = TextStyle(
    fontSize: 58,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: 'Poppins',
    color: Colors.white,
  );

  static const TextStyle f41Regular = TextStyle(
    fontSize: 41,
    fontWeight: FontWeightHelper.regular,
    color: Colors.white,
  );

  static const TextStyle f20Bold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeightHelper.bold,
  );

  static const TextStyle f24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.bold,
  );

  static const TextStyle f16Regular = TextStyle(
    fontSize: 24,
    fontWeight: FontWeightHelper.regular,
  );

  static const TextStyle f14Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.regular,
    color: Colors.black45,
  );

  static const TextStyle f15Medium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeightHelper.medium,
    color: AppColors.black,
    fontFamily: 'Poppins',
  );
}
