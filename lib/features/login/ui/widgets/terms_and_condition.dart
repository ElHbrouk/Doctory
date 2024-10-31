import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our  ',
            style: AppTextStyle.font14RegularGrey(context),
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: AppTextStyle.font14MediumDarkBlue(context),
          ),
          TextSpan(
            text: '\nand',
            style: AppTextStyle.font14RegularGrey(context).copyWith(
              height: 1.5,
            ),
          ),
          TextSpan(
            text: ' PrivacyPolicy.',
            style: AppTextStyle.font14MediumDarkBlue(context),
          )
        ],
      ),
    );
  }
}
