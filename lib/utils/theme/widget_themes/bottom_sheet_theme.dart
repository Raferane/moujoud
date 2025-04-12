import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/constants/colors.dart';

class TBottomSheetTheme {
  TBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme =
      const BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.lSurfaceContainerLow,
    modalBackgroundColor: TColors.lSurfaceContainerLow,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(28.0),
      topRight: Radius.circular(28.0),
    )),
  );

  static BottomSheetThemeData darkBottomSheetTheme = const BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: TColors.dSurfaceContainerLow,
    modalBackgroundColor: TColors.dSurfaceContainerLow,
    constraints: BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(28.0),
      topRight: Radius.circular(28.0),
    )),
  );
}
