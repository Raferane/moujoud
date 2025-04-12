import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/theme/widget_themes/text_theme.dart';
import '../../constants/colors.dart';

class TAlertDialogTheme {
  TAlertDialogTheme._();

  static DialogTheme lightAlertDialogTheme = DialogTheme(
    backgroundColor: TColors.lSurfaceContainerHigh,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TTextTheme.lightTextTheme.headlineLarge,
    contentTextStyle: TTextTheme.lightTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    elevation: 6,
    shadowColor: Colors.black,
  );

  static DialogTheme darkAlertDialogTheme = DialogTheme(
    backgroundColor: TColors.dSurfaceContainerHigh,
    surfaceTintColor: Colors.transparent,
    titleTextStyle: TTextTheme.darkTextTheme.headlineLarge,
    contentTextStyle: TTextTheme.darkTextTheme.bodyMedium,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    // elevation: 6,
    // shadowColor: Colors.white,
  );
}
