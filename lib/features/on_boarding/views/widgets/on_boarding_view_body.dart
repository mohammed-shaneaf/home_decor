import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/utils/app_images.dart';
import 'package:home_decor/core/widgets/build_dot.dart';
import 'package:home_decor/features/Auth/views/sign_in_view.dart';
import 'package:home_decor/features/on_boarding/views/widgets/on_boarding_page.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      'image': Assets.assetsImagesLivingRoom,
      'title': 'Comfortable Space',
      'subtitle': 'Feel at home, wherever you are.',
    },
    {
      'image': Assets.assetsImagesOnBoardingTwo,
      'title': 'Modern Design',
      'subtitle': 'Sleek. Simple. Sophisticated.',
    },
    {
      'image': Assets.assetsImagesOnBoardingThree,
      'title': 'Styled Living',
      'subtitle': '"Style your life, your way.',
    },
    {
      'image': Assets.assetsImagesOnBoardingFour,
      'title': 'Relaxing Furniture',
      'subtitle': 'Let comfort define your home',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: onboardingData.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final data = onboardingData[index];
              return OnBoardingPage(
                image: data['image']!,
                title: data['title']!,
                subtitle: data['subtitle']!,
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  onboardingData.length,
                  (index) => buildDot(index == _currentPage),
                ),
              ),
              SizedBox(
                height: 45.h,
                width: 110.w,
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage < onboardingData.length - 1) {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn,
                      );
                    } else {
                      context.push(SignInView());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.r),
                    ),
                  ),
                  child: Text(
                    _currentPage < onboardingData.length - 1 ? 'Next' : 'Start',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
