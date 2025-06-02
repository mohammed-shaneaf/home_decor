import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_decor/core/extensions/context_extensions.dart';
import 'package:home_decor/core/themes/app_colors.dart';
import 'package:home_decor/core/themes/app_styles.dart';
import 'package:home_decor/core/utils/custom_button.dart';
import 'package:home_decor/core/utils/custom_text_form_field.dart';
import 'package:home_decor/core/widgets/font_weight_helper.dart';
import 'package:home_decor/features/Auth/views/set_password_view.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _onNextPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.push(SetPasswordView());
      debugPrint('Email submitted: ${_emailController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Enter Your Email Address', style: AppStyles.f14Bold),
          SizedBox(height: 10.h),
          CustomTextFormField(
            controller: _emailController,
            backgroundColor: Colors.white,
            hintText: 'Enter Your Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Email is required';
              }
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return 'Enter a valid email';
              }
              return null;
            },
          ),
          SizedBox(height: 30.h),
          Center(
            child: CustomButton(
              fontWeight: FontWeightHelper.extraBold,
              fontSize: 20.sp,
              onPressed: _onNextPressed,
              text: 'Next',
              textColor: AppColors.vinous,
            ),
          ),
        ],
      ),
    );
  }
}
