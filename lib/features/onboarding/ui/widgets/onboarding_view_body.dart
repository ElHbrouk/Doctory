import 'package:doctory/core/helpers/extension.dart';
import 'package:doctory/core/routing/routes.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:doctory/core/widgets/custom_button.dart';
import 'package:doctory/features/onboarding/ui/widgets/doc_logo_and_name.dart';
import 'package:doctory/features/onboarding/ui/widgets/doctor_image_and_welcoming_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30.h,
        ),
        child: Column(
          children: [
            DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorImageAndWelcomingText(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: AppTextStyle.font13RegularGrey,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 32.h),
                  CustomButton(
                    buttonName: 'Get Started',
                    onPressed: () {
                      context.pushNamed(Routes.loginView);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
