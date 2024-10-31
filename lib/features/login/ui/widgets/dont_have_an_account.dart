import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: AppTextStyle.font14RegularDarkBlue(context),
        ),
        4.horizontalSpace,
        GestureDetector(
          onTap: () {
            // context.pushNamed(Routes.registerView);
          },
          child: Text(
            'Sign Up',
            style: AppTextStyle.font14SemiBoldBlue(context),
          ),
        ),
      ],
    );
  }
}
