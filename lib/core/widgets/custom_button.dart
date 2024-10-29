import 'package:doctory/core/theming/app_colors.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName, this.onPressed});
  final String buttonName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        minimumSize: WidgetStateProperty.all(
          Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: AppTextStyle.font16SemiBoldWhite,
      ),
    );
  }
}
