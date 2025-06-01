import 'package:flutter/material.dart';
import 'package:home_decor/features/Auth/views/widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SignInViewBody()));
  }
}
