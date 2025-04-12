import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TTextButtonTheme {
  TTextButtonTheme._();

  static TextButtonThemeData lightTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      overlayColor: WidgetStateProperty.all(TColors.lPrimary.withAlpha(31)),
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.lPrimary.withAlpha(204);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.lPrimary;
        }
        return TColors.lPrimary;
      }),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.disabled)) {
          return const TextStyle(
            fontSize: 14,
            color: TColors.lOnSurfaceVariant,
            fontWeight: FontWeight.w500,
          );
        }
        return const TextStyle(
          fontSize: 14,
          color: TColors.lPrimary,
          fontWeight: FontWeight.w500,
        );
      }),
    ),
  );

  static TextButtonThemeData darkTextButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
        if (states.contains(WidgetState.disabled)) {
          return TColors.dOnSurfaceVariant.withOpacity(0.38);
        }
        if (states.contains(WidgetState.pressed)) {
          return TColors.dPrimary;
        }
        return TColors.dPrimary;
      }),
      backgroundColor: WidgetStateProperty.all(Colors.transparent),
      padding: WidgetStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.disabled)) {
          return const TextStyle(
            fontSize: 14,
            color: TColors.dOnSurfaceVariant,
            fontWeight: FontWeight.w500,
          );
        }
        return const TextStyle(
          fontSize: 14,
          color: TColors.dPrimary,
          fontWeight: FontWeight.w500,
        );
      }),
    ),
  );
}
