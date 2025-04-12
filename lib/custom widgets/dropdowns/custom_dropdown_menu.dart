import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';

class CustomDropDownMenu<T> extends StatelessWidget {
  final String? label;
  final String? hint;
  final T? value;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?)? onChanged;
  final String? Function(T?)? validator;

  const CustomDropDownMenu({
    super.key,
    this.label,
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
            labelText: label,
            hintText: hint,
            floatingLabelStyle:
                const TextStyle(color: TColors.lOnSurfaceVariant),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: TColors.lOnSurfaceVariant),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: TColors.lPrimary),
            ),
            errorText: formFieldState.errorText,
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<T>(
              value: value,
              items: items,
              onChanged: onChanged,
              buttonStyleData: const ButtonStyleData(
                height: 40,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: TSizes.md),
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
              menuItemStyleData: MenuItemStyleData(
                selectedMenuItemBuilder: (context, child) {
                  return Container(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? TColors.dPrimaryContainer
                        : TColors.lPrimaryContainer,
                    child: child,
                  );
                },
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
                // textStyle: TextStyle(
                //   color: Theme.of(context).brightness == Brightness.dark
                //       ? TColors.dOnSurface
                //       : TColors.lOnSurface,
                // ),
              ),
            ),
          ),
        );
      },
    );
  }
}
