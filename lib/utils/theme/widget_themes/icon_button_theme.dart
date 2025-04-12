import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TIconButtonTheme {
  TIconButtonTheme._();

  static IconButtonThemeData lightIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.lSurfaceContainer.withAlpha(31);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.lSecondaryContainer;
        }
        return TColors.lSecondaryContainer;
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.lOnSecondaryContainer;
        }
        return TColors.lOnSecondaryContainer;
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.all(TSizes.sm),
      ),
      shape: WidgetStateProperty.all<CircleBorder>(
        const CircleBorder(eccentricity: BorderSide.strokeAlignCenter),
      ),
    ),
  );

  static IconButtonThemeData darkIconButtonTheme = IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.dSurfaceContainer.withAlpha(31);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.dSecondaryContainer;
        }
        return TColors.dSecondaryContainer;
      }),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.dOnSecondaryContainer;
        }
        return TColors.dOnSecondaryContainer;
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.all(TSizes.sm),
      ),
      shape: WidgetStateProperty.all<CircleBorder>(
        const CircleBorder(eccentricity: BorderSide.strokeAlignCenter),
      ),
    ),
  );
}
