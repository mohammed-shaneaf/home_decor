import 'package:flutter/material.dart';
import 'package:home_decor/features/Auth/views/widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ForgotPasswordViewBody()));
  }
}
