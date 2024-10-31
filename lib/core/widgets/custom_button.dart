import 'package:doctory/core/theming/app_colors.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttonName,
    this.onPressed,
    this.borderRadius,
    this.backgroundColor,
    this.verticalPadding,
    this.horizontalPadding,
    this.buttonWidth,
    this.buttonHeight,
  });
  final String buttonName;
  final void Function()? onPressed;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? buttonWidth;
  final double? buttonHeight;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.all<Color>(
          backgroundColor ?? AppColors.mainBlue,
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsetsDirectional.symmetric(
            vertical: verticalPadding?.h ?? 14.h,
            horizontal: horizontalPadding?.w ?? 12.w,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(
            buttonWidth?.w ?? double.maxFinite,
            buttonHeight?.h ?? 52.h,
          ),
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: AppTextStyle.font16SemiBoldWhite(context),
      ),
    );
  }
}
