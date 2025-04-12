import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class SellerDropDownMenu<T> extends StatelessWidget {
  final String? hint;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;

  const SellerDropDownMenu({
    super.key,
    this.hint,
    required this.value,
    required this.items,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T>(
      validator: validator,
      builder: (formFieldState) {
        return InputDecorator(
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Theme.of(context).brightness == Brightness.dark
                ? TColors.dSurfaceContainerLow
                : TColors.lSurfaceContainerLow,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(TSizes.buttonRadius),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: TSizes.md,
              vertical: TSizes.sm,
            ),
            errorText: formFieldState.errorText,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<T>(
              value: value,
              items: items,
              onChanged: onChanged,
              buttonStyleData: ButtonStyleData(
                height: 40,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
              ),
              dropdownStyleData: DropdownStyleData(
                maxHeight: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                  color: Theme.of(context).brightness == Brightness.dark
                      ? TColors.dSurfaceContainerLow
                      : TColors.lSurfaceContainerLow,
                ),
                offset: const Offset(0, -5),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: TSizes.md),
              ),
            ),
          ),
        );
      },
    );
  }
}
