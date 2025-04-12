import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TSegmentedButtonTheme {
  TSegmentedButtonTheme._();

  static SegmentedButtonThemeData lightSegmentedButtonTheme =
      SegmentedButtonThemeData(
    style: ButtonStyle(
      iconSize: WidgetStateProperty.all(TSizes.md),
      iconColor: WidgetStateProperty.all(TColors.lOnSecondaryContainer),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.lSecondaryContainer;
        }
        return TColors.lSurface;
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.lOnSecondaryContainer;
        }
        return TColors.lOnSurface;
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 55, vertical: 12),
      ),
    ),
  );

  static SegmentedButtonThemeData darkSegmentedButtonTheme =
      SegmentedButtonThemeData(
    style: ButtonStyle(
      fixedSize: WidgetStateProperty.all(const Size(100, 40)),
      iconColor: WidgetStateProperty.all(TColors.dOnSecondaryContainer),
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.dSecondaryContainer;
        }
        return TColors.dSurface;
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.selected)) {
          return TColors.dOnSecondaryContainer;
        }
        return TColors.dOnSurface;
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: 55, vertical: 12),
      ),
    ),
  );
}
