import 'package:flutter/material.dart';
import 'package:home_decor/features/on_boarding/views/on_boarding_view.dart';
import 'package:home_decor/features/splash/views/widgets/splash_two_view_body.dart';

class SplashTwoView extends StatelessWidget {
  const SplashTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const OnBoardingView()),
          );
        },

        //Ensures the entire screen is tappable even if there’s no visual widget in some areas.
        behavior: HitTestBehavior.opaque, // Makes entire area tappable
        child: const SplashTwoViewBody(),
      ),
    );
  }
}
