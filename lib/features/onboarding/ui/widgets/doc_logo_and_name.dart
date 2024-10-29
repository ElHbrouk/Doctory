import 'package:doctory/core/images/app_images.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.svgsDocdocLogo),
        SizedBox(width: 10.w),
        Text(
          'DocDoc',
          style: AppTextStyle.font24BoldBlack,
        ),
      ],
    );
  }
}
