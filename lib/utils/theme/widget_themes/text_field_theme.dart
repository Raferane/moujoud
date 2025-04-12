import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.lOnSurfaceVariant,
    suffixIconColor: TColors.lOnSurfaceVariant,
    labelStyle: const TextStyle().copyWith(
        fontSize: TSizes.fontSizeMd, color: TColors.lOnSurfaceVariant),
    hintStyle: const TextStyle().copyWith(
        fontSize: TSizes.fontSizeSm, color: TColors.lOnSurfaceVariant),
    errorStyle: const TextStyle().copyWith(
        fontStyle: FontStyle.normal, color: TColors.lError, fontSize: 12),
    floatingLabelStyle:
        const TextStyle().copyWith(color: TColors.lOnSurfaceVariant),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 1, color: TColors.lOutline),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: TColors.lOutline),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 1, color: TColors.lOutline),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: TColors.lError),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 2, color: TColors.lError),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TColors.dOnSurfaceVariant,
    suffixIconColor: TColors.dOnSurfaceVariant,
    constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
        fontSize: TSizes.fontSizeMd, color: TColors.dOnSurfaceVariant),
    hintStyle: const TextStyle().copyWith(
        fontSize: TSizes.fontSizeSm, color: TColors.dOnSurfaceVariant),
    errorStyle: const TextStyle().copyWith(
        fontStyle: FontStyle.normal, color: TColors.dError, fontSize: 12),
    floatingLabelStyle:
        const TextStyle().copyWith(color: TColors.dOnSurfaceVariant),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 1, color: TColors.dOutline),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: TColors.dOutline),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 1, color: TColors.dOutline),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(color: TColors.dError),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(4.0),
      borderSide: const BorderSide(width: 2, color: TColors.dError),
    ),
  );
}
