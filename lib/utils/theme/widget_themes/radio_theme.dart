import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TRadioTheme {
  TRadioTheme._();

  static RadioThemeData lightRadioTheme = RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return TColors.lOnSurfaceVariant.withAlpha(97);
      }
      if (states.contains(WidgetState.error)) {
        return TColors.lError;
      }
      if (states.contains(WidgetState.selected)) {
        return TColors.lPrimary;
      }
      return TColors.lOnSurfaceVariant;
    }),
    overlayColor: WidgetStateProperty.all(TColors.lPrimary.withAlpha(31)),
  );

  static RadioThemeData darkRadioTheme = RadioThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.disabled)) {
        return TColors.dOnSurfaceVariant.withAlpha(97);
      }
      if (states.contains(WidgetState.error)) {
        return TColors.dError;
      }
      if (states.contains(WidgetState.selected)) {
        return TColors.dPrimary;
      }
      return TColors.dOnSurfaceVariant;
    }),
    overlayColor: WidgetStateProperty.all(TColors.dPrimary.withAlpha(31)),
  );
}
