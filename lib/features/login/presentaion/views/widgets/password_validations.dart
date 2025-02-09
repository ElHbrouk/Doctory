import 'package:doctory/core/theming/app_colors.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowercase;
  final bool hasUppercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowercase,
    required this.hasUppercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowercase),
        2.verticalSpace,
        buildValidationRow('At least 1 uppercase letter', hasUppercase),
        2.verticalSpace,
        buildValidationRow('At least 1 number', hasNumber),
        2.verticalSpace,
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacter),
        2.verticalSpace,
        buildValidationRow('At least 8 characters', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: AppColors.grey,
        ),
        6.horizontalSpace,
        Text(
          text,
          style: AppTextStyle.font14RegularDarkBlue.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? AppColors.grey : AppColors.darkBlue,
          ),
        ),
      ],
    );
  }
}
