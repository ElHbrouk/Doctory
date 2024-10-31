import 'package:flutter/material.dart';

responsiveFont(BuildContext context, double fontSize) {
  var fontFactor = fontScale(context);

  var responsiveFont = fontSize * fontFactor;
  double lowerLimit = 0.9 * fontSize;
  double upperLimit = 1.25 * fontSize;
  return responsiveFont.clamp(lowerLimit, upperLimit);
}

fontScale(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 500;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
