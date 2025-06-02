import 'package:flutter/material.dart';
import 'package:home_decor/core/routing/router_name.dart';
import 'package:home_decor/features/Auth/views/forgot_password_view.dart';
import 'package:home_decor/features/Auth/views/set_password_view.dart';
import 'package:home_decor/features/Auth/views/sign_in_view.dart';
import 'package:home_decor/features/Auth/views/sign_up_view.dart';
import 'package:home_decor/features/on_boarding/views/on_boarding_view.dart';
import 'package:home_decor/features/splash/views/splash_view.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouterName.splashone:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case RouterName.onBoarding:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case RouterName.signinview:
      return MaterialPageRoute(builder: (context) => const SignInView());

    case RouterName.signupview:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    case RouterName.forgotpasswordview:
      return MaterialPageRoute(
        builder: (context) => const ForgotPasswordView(),
      );

    case RouterName.setpasswordview:
      return MaterialPageRoute(builder: (context) => const SetPasswordView());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('404 - Page Not Found'))),
      );
  }
}
