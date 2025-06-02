import 'package:flutter/material.dart';
import 'package:home_decor/features/Auth/views/widgets/set_password_view_body.dart';

class SetPasswordView extends StatelessWidget {
  const SetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SetPasswordViewBody()));
  }
}
