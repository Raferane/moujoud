import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TSnackbarTheme {
  TSnackbarTheme._();

  static SnackBarThemeData lightSnackBarTheme = SnackBarThemeData(
    backgroundColor: TColors.lInverseSurface,
    actionTextColor: TColors.lInversePrimary,
    contentTextStyle: const TextStyle(
      fontSize: 14,
      color: TColors.lInverseOnSurface,
      fontWeight: FontWeight.w500,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 0,
  );

  static SnackBarThemeData darkSnackBarTheme = SnackBarThemeData(
    backgroundColor: TColors.dInverseSurface,
    actionTextColor: TColors.dInversePrimary,
    contentTextStyle: const TextStyle(
      fontSize: 14,
      color: TColors.dInverseOnSurface,
      fontWeight: FontWeight.w500,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(TSizes.buttonRadius),
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 0,
  );
}
