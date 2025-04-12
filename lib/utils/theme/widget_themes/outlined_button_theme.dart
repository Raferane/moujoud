import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.lOnSurfaceVariant.withOpacity(0.38);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.lPrimaryContainer;
        }
        return TColors.lPrimary;
      }),
      side: WidgetStateProperty.resolveWith<BorderSide>((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: TColors.lOutline.withOpacity(0.12));
        }
        return const BorderSide(color: TColors.lOutline);
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: TSizes.lg, vertical: TSizes.md),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
      ),
      minimumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, TSizes.buttonHeight),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.dOnSurfaceVariant.withOpacity(0.38);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.dPrimaryContainer;
        }
        return TColors.dPrimary;
      }),
      side: WidgetStateProperty.resolveWith<BorderSide>((states) {
        if (states.contains(WidgetState.disabled)) {
          return BorderSide(color: TColors.dOutline.withOpacity(0.12));
        }
        return const BorderSide(color: TColors.dOutline);
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: TSizes.lg, vertical: TSizes.md),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
      ),
      minimumSize: WidgetStateProperty.all<Size>(
        const Size(double.infinity, TSizes.buttonHeight),
      ),
    ),
  );
}
