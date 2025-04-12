import 'package:flutter/material.dart';

class TResponsive {
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  // Responsive width based on screen size
  static double getWidth(BuildContext context, double percentage) {
    return screenWidth(context) * (percentage / 100);
  }

  // Responsive height based on screen size
  static double getHeight(BuildContext context, double percentage) {
    return screenHeight(context) * (percentage / 100);
  }

  // Returns true if the screen is a mobile screen (<600px)
  static bool isMobile(BuildContext context) => screenWidth(context) < 600;

  // Returns true if the screen is a tablet screen (>=600px)
  static bool isTablet(BuildContext context) => screenWidth(context) >= 600;

  // Get responsive font size
  static double getFontSize(BuildContext context, double baseSize) {
    double scaleFactor =
        screenWidth(context) / 375; // Base width is 375 (iPhone)
    return baseSize * scaleFactor.clamp(0.8, 1.2); // Limit scaling
  }

  // Get responsive padding
  static EdgeInsets getScaledPadding(BuildContext context, EdgeInsets padding) {
    double scaleFactor = screenWidth(context) / 375;
    return EdgeInsets.only(
      left: padding.left * scaleFactor,
      top: padding.top * scaleFactor,
      right: padding.right * scaleFactor,
      bottom: padding.bottom * scaleFactor,
    );
  }
}
