import 'dart:developer';

import 'package:doctory/core/helpers/extension.dart';
import 'package:doctory/core/theming/app_colors.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:doctory/features/login/presentaion/cubits/login_cubit/login_cubit.dart';
import 'package:doctory/features/login/presentaion/cubits/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/routing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Failure,
      listener: (context, state) {
        state.whenOrNull(
          loading: () => showDialog(
            context: context,
            builder: (context) => Center(
              child: const CircularProgressIndicator(
                color: AppColors.mainBlue,
              ),
            ),
          ),
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeView);
          },
          failure: (failure) {
            setupErrorState(context, failure);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String failure) {
    context.pop();
    log('bye');
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        insetPadding: EdgeInsets.symmetric(vertical: 300.h),
        actionsAlignment: MainAxisAlignment.center,
        icon: const Icon(
          Icons.error,
          color: Colors.red,
        ),
        content: Center(
          child: Text(
            failure,
            style: AppTextStyle.font14MediumDarkBlue,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
