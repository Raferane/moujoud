import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TFloatingActionButtonTheme {
  TFloatingActionButtonTheme._();

  static FloatingActionButtonThemeData lightFloatingActionButtonTheme =
      const FloatingActionButtonThemeData(
    backgroundColor: TColors.lPrimary,
    foregroundColor: TColors.white,
    elevation: 0,
    shape: CircleBorder(),
    extendedPadding: EdgeInsets.all(TSizes.lg),
    largeSizeConstraints: BoxConstraints.tightFor(width: 56, height: 56),
  );

  static FloatingActionButtonThemeData darkFloatingActionButtonTheme =
      const FloatingActionButtonThemeData(
    backgroundColor: TColors.dPrimary,
    foregroundColor: TColors.white,
    elevation: 0,
    shape: CircleBorder(),
    extendedPadding: EdgeInsets.all(TSizes.lg),
    largeSizeConstraints: BoxConstraints.tightFor(width: 56, height: 56),
  );
}
