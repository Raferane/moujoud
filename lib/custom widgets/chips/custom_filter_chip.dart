import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/helpers/helper_functions.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomFilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onSelected;
  final bool isEnabled;

  const CustomFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);

    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: isEnabled ? (_) => onSelected() : null,
      showCheckmark: false,
      backgroundColor: isDark ? TColors.dSurface : TColors.lSurface,
      selectedColor:
          isDark ? TColors.dSecondaryContainer : TColors.lSecondaryContainer,
      disabledColor: isDark
          ? TColors.dSurfaceVariant.withAlpha(31)
          : TColors.lSurfaceVariant.withAlpha(31),
      labelStyle: TextStyle(
        color: isSelected
            ? (isDark
                ? TColors.dOnSecondaryContainer
                : TColors.lOnSecondaryContainer)
            : (isDark ? TColors.dOnSurfaceVariant : TColors.lOnSurfaceVariant),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.sm,
        vertical: TSizes.sm,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(TSizes.buttonRadius),
        side: BorderSide(
          color: isDark ? TColors.dOutlineVariant : TColors.lOutlineVariant,
        ),
      ),
    );
  }
}
