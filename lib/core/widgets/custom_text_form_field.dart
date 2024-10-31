import 'package:doctory/core/theming/app_colors.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    this.hintStyle,
    this.prefixIcon,
    this.fillColor,
    this.validator,
  });
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final Color? fillColor;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
      decoration: InputDecoration(
        filled: true,
        fillColor: fillColor ?? AppColors.lightestgrey,
        hintStyle: hintStyle ?? AppTextStyle.font14RegularLightGrey(context),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: AppColors.lightergrey,
                width: 1.3,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: AppColors.lightergrey,
                width: 1.3,
              ),
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(
              vertical: 18.h,
              horizontal: 20.w,
            ),
        hintText: hintText,
      ),
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      obscureText: obscureText ?? false,
      style: AppTextStyle.font14MediumDarkBlue(context),
    );
  }
}
