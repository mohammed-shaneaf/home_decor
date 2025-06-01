import 'package:flutter/material.dart';
import 'package:home_decor/features/Auth/views/widgets/custom_auth_app_bar.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Center(child: CustomAuthAppBar(text: 'Create Account '))],
    );
  }
}
