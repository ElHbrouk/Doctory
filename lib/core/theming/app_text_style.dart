import 'package:doctory/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle font32BoldBlue = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: Colors.blue,
  );

  static TextStyle font24BoldBlack = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle font24BoldBlue = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.mainBlue,
  );

  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static TextStyle font14SemiBoldBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.mainBlue,
  );

  static TextStyle font14RegularGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
  );

  static TextStyle font14RegularBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.mainBlue,
  );

  static TextStyle font14RegularLightGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightgrey,
  );

  static TextStyle font14MediumDarkBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );

  static TextStyle font14RegularDarkBlue = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.darkBlue,
  );
}
