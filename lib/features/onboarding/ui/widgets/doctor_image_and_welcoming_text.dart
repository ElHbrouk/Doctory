import 'package:doctory/core/images/app_images.dart';
import 'package:doctory/core/theming/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndWelcomingText extends StatelessWidget {
  const DoctorImageAndWelcomingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.bottomCenter,
      children: [
        Positioned(
            right: 20,
            child: SvgPicture.asset(AppImages.svgsDocdocLogoBackground)),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0),
              ],
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.imagesOnboardingDoctor),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor \nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyle.font32BoldBlue(context).copyWith(
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
