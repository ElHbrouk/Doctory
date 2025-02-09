import 'package:doctory/core/helpers/extension.dart';
import 'package:doctory/core/routing/routes.dart';
import 'package:doctory/core/widgets/custom_button.dart';
import 'package:doctory/features/login/presentaion/views/widgets/dont_have_an_account.dart';
import 'package:doctory/features/login/presentaion/views/widgets/email_and_password.dart';
import 'package:doctory/features/login/presentaion/views/widgets/login_bloc_listener.dart';
import 'package:doctory/features/login/presentaion/views/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/login_request_body.dart';
import '../cubits/login_cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                  style: AppTextStyle.font24BoldBlue,
                ),
                8.verticalSpace,
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: AppTextStyle.font14RegularGrey,
                ),
                36.verticalSpace,
                Column(
                  children: [
                    EmailAndPassword(),
                    24.verticalSpace,
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: AppTextStyle.font14RegularBlue,
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                CustomButton(
                  buttonName: 'Login',
                  onPressed: () {
                    validateThenLogin(context);
                  },
                ),
                16.verticalSpace,
                TermsAndConditions(),
                60.verticalSpace,
                DontHaveAnAccount(),
                const LoginBlocListener(),  
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
