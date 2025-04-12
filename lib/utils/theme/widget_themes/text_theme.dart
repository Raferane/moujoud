import 'package:flutter/material.dart';
import '../../constants/colors.dart';

/// Custom Class for Light & Dark Text Themes
class TTextTheme {
  TTextTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
        fontSize: 56.0, fontWeight: FontWeight.bold, color: TColors.black),
    displaySmall: const TextStyle().copyWith(
        fontSize: 34.0, fontWeight: FontWeight.bold, color: TColors.black),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w500, color: TColors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22.0, fontWeight: FontWeight.w500, color: TColors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: TColors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: TColors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: TColors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.black),
    labelLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: TColors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: TColors.black),
    labelSmall: const TextStyle().copyWith(
        fontSize: 10.0, fontWeight: FontWeight.normal, color: TColors.black),
    caption: const TextStyle().copyWith(
        fontSize: 8.0, fontWeight: FontWeight.w500, color: TColors.black),
  );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle().copyWith(
        fontSize: 56.0, fontWeight: FontWeight.bold, color: TColors.white),
    displaySmall: const TextStyle().copyWith(
        fontSize: 34.0, fontWeight: FontWeight.bold, color: TColors.white),
    headlineLarge: const TextStyle().copyWith(
        fontSize: 24.0, fontWeight: FontWeight.w500, color: TColors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 22.0, fontWeight: FontWeight.w500, color: TColors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 20.0, fontWeight: FontWeight.bold, color: TColors.white),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 16.0, fontWeight: FontWeight.normal, color: TColors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: TColors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: TColors.white),
    labelLarge: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.bold, color: TColors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: TColors.white),
    labelSmall: const TextStyle().copyWith(
        fontSize: 10.0, fontWeight: FontWeight.normal, color: TColors.white),
    caption: const TextStyle().copyWith(
        fontSize: 8.0, fontWeight: FontWeight.w500, color: TColors.white),
  );
}
