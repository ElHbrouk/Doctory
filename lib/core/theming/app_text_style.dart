import 'package:doctory/core/functions/responsive_font.dart';
import 'package:doctory/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle font24BoldBlack(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 24),
      fontWeight: FontWeight.w700,
      color: Colors.black,
    );
  }

  static TextStyle font24BoldBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 24),
      fontWeight: FontWeight.w700,
      color: AppColors.mainBlue,
    );
  }

  static TextStyle font32BoldBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 32),
      fontWeight: FontWeight.w700,
      color: Colors.blue,
    );
  }

  static TextStyle font16SemiBoldWhite(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 16),
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle font14SemiBoldBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w600,
      color: AppColors.mainBlue,
    );
  }

  static TextStyle font14RegularGrey(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w400,
      color: AppColors.grey,
    );
  }

  static TextStyle font14RegularBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w400,
      color: AppColors.mainBlue,
    );
  }

  static TextStyle font14RegularLightGrey(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w400,
      color: AppColors.lightgrey,
    );
  }

  static TextStyle font14MediumDarkBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w500,
      color: AppColors.darkBlue,
    );
  }

  static TextStyle font14RegularDarkBlue(BuildContext context) {
    return TextStyle(
      fontSize: responsiveFont(context, 14),
      fontWeight: FontWeight.w400,
      color: AppColors.darkBlue,
    );
  }
}
