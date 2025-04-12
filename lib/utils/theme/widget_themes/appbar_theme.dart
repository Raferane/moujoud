import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: TColors.lSurface,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.lOnSurface, size: TSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: TColors.lOnSurfaceVariant, size: TSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: TColors.lOnSurface),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: TColors.dSurface,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: TColors.dOnSurface, size: TSizes.iconMd),
    actionsIconTheme:
        IconThemeData(color: TColors.dOnSurfaceVariant, size: TSizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.normal,
        color: TColors.dOnSurface),
  );
}
