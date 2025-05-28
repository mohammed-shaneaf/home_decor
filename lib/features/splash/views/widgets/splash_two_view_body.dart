import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_decor/core/utils/app_colors.dart';
import 'package:home_decor/core/utils/app_styles.dart';
import 'package:home_decor/core/utils/assets.dart';

class SplashTwoViewBody extends StatefulWidget {
  const SplashTwoViewBody({super.key});

  @override
  State<SplashTwoViewBody> createState() => _SplashTwoViewBodyState();
}

class _SplashTwoViewBodyState extends State<SplashTwoViewBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _textScaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _textScaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutBack),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(Assets.assetsImagesLogoOrange),
              const SizedBox(height: 24),
              ScaleTransition(
                scale: _textScaleAnimation,
                child: Text(
                  'HOME',
                  style: AppStyles.f58WhiteBold.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),

              ScaleTransition(
                scale: _textScaleAnimation,
                child: Text(
                  'DECOR',
                  style: AppStyles.f41WhiteRegular.copyWith(
                    letterSpacing: 12.0,
                    height: 1.2,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
