import 'package:flutter/material.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class TSearchBox extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final VoidCallback? onTap;
  final bool readOnly;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  const TSearchBox({
    super.key,
    this.controller,
    this.hintText,
    this.onTap,
    this.readOnly = false,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return TextFormField(
      controller: controller,
      onTap: onTap,
      readOnly: readOnly,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: suffixIcon,
        hintText: hintText ?? 'Search...',
        hintStyle: TextStyle(
          color: isDark ? TColors.dOnSurfaceVariant : TColors.lOnSurfaceVariant,
        ),
        filled: true,
        fillColor: isDark ? TColors.dSurfaceVariant : TColors.lSurfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(TSizes.inputFieldRadius),
          borderSide: BorderSide(
            color: isDark ? TColors.dPrimary : TColors.lPrimary,
          ),
        ),
      ),
    );
  }
}
