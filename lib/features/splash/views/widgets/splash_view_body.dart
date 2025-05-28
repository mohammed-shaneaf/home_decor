import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/core/utils/app_styles.dart';
import 'package:home_decor/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SvgPicture.asset(Assets.assetsImagesLogoWhite),
        const SizedBox(height: 16),
        Center(child: const Text('HOME', style: AppStyles.f58WhiteBold)),
        Center(
          child: Text(
            'DECOR',
            style: AppStyles.f41WhiteRegular.copyWith(letterSpacing: 12.0),
          ),
        ),
      ],
    );
  }
}
