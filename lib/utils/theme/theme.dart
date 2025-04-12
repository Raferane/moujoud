import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/theme/widget_themes/appbar_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/chip_theme.dart';
//import 'package:maujoud_app/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/text_field_theme.dart';
import 'package:maujoud_app/utils/theme/widget_themes/text_theme.dart';
import '../constants/colors.dart';
import 'widget_themes/icon_button_theme.dart';
import 'widget_themes/text_button_theme.dart';
import 'widget_themes/segmented_button_theme.dart';
import 'widget_themes/alert_dialog_theme.dart';
import 'widget_themes/snackbar_theme.dart';
import 'widget_themes/slider_theme.dart';
import 'widget_themes/radio_theme.dart';
import 'widget_themes/floating_action_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.lOnSurface,
    brightness: Brightness.light,
    primaryColor: TColors.lPrimary,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TColors.lSurface,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    //elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    iconButtonTheme: TIconButtonTheme.lightIconButtonTheme,
    textButtonTheme: TTextButtonTheme.lightTextButtonTheme,
    segmentedButtonTheme: TSegmentedButtonTheme.lightSegmentedButtonTheme,
    dialogTheme: TAlertDialogTheme.lightAlertDialogTheme,
    snackBarTheme: TSnackbarTheme.lightSnackBarTheme,
    sliderTheme: TSliderTheme.lightSliderTheme,
    radioTheme: TRadioTheme.lightRadioTheme,
    floatingActionButtonTheme:
        TFloatingActionButtonTheme.lightFloatingActionButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TColors.dOnSurface,
    brightness: Brightness.dark,
    primaryColor: TColors.dPrimary,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TColors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    //elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    iconButtonTheme: TIconButtonTheme.darkIconButtonTheme,
    textButtonTheme: TTextButtonTheme.darkTextButtonTheme,
    segmentedButtonTheme: TSegmentedButtonTheme.darkSegmentedButtonTheme,
    dialogTheme: TAlertDialogTheme.darkAlertDialogTheme,
    snackBarTheme: TSnackbarTheme.darkSnackBarTheme,
    sliderTheme: TSliderTheme.darkSliderTheme,
    radioTheme: TRadioTheme.darkRadioTheme,
    floatingActionButtonTheme:
        TFloatingActionButtonTheme.darkFloatingActionButtonTheme,
  );
}
