//TODO: gotta maake the ui of the slider
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TSliderTheme {
  TSliderTheme._();

  static SliderThemeData lightSliderTheme = SliderThemeData(
    activeTrackColor: TColors.lSecondaryContainer,
    inactiveTrackColor: TColors.lPrimary,
    thumbColor: TColors.lPrimary,
    overlayColor: TColors.lPrimary.withOpacity(0.12),
    activeTickMarkColor: TColors.lOnSecondaryContainer,
    inactiveTickMarkColor: TColors.lSecondaryContainer,
    trackHeight: 10,
    thumbShape: const RoundSliderThumbShape(
      enabledThumbRadius: 10,
    ),
    valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
    valueIndicatorTextStyle: const TextStyle(
      color: TColors.black,
    ),
  );

  static SliderThemeData darkSliderTheme = SliderThemeData(
    activeTrackColor: TColors.dSecondaryContainer,
    inactiveTrackColor: TColors.dPrimary,
    thumbColor: TColors.dPrimary,
    overlayColor: TColors.dPrimary.withOpacity(0.12),
    valueIndicatorColor: TColors.dPrimary,
    valueIndicatorTextStyle: const TextStyle(
      color: TColors.white,
    ),
  );
}
