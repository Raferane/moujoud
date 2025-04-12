import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = const ChipThemeData(
    disabledColor: TColors.lOutline,
    labelStyle: TextStyle(color: TColors.lOnSecondaryContainer),
    selectedColor: TColors.lSecondaryContainer,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    showCheckmark: false,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.dOutline,
    labelStyle: TextStyle(color: TColors.dOnSecondaryContainer),
    selectedColor: TColors.dSecondaryContainer,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    showCheckmark: false,
  );
}
