import 'package:doctory/core/helpers/extension.dart';
import 'package:doctory/core/routing/routes.dart';
import 'package:doctory/core/widgets/custom_button.dart';
import 'package:doctory/core/widgets/custom_text_form_field.dart';
import 'package:doctory/features/login/ui/widgets/dont_have_an_account.dart';
import 'package:doctory/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 30.h,
            horizontal: 30.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back!',
                  style: AppTextStyle.font24BoldBlue(context),
                ),
                8.verticalSpace,
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyle.font14RegularGrey(context),
                ),
                36.verticalSpace,
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        hintText: 'Email Address',
                      ),
                      18.verticalSpace,
                      CustomTextFormField(
                        hintText: 'Password',
                        obscureText: obscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      24.verticalSpace,
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: AppTextStyle.font14RegularBlue(context),
                        ),
                      ),
                    ],
                  ),
                ),
                24.verticalSpace,
                CustomButton(
                  buttonName: 'Login',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushNamed(Routes.homeView);
                    }
                  },
                ),
                16.verticalSpace,
                TermsAndConditions(),
                60.verticalSpace,
                DontHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
