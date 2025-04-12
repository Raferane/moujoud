import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/constants/sizes.dart';
import 'package:maujoud_app/custom widgets/dropdowns/custom_dropdown_menu.dart';
import 'package:maujoud_app/custom widgets/dropdowns/seller_dropdown_menu.dart';

class WidgetTest extends StatefulWidget {
  const WidgetTest({super.key});

  @override
  State<WidgetTest> createState() => _WidgetTestState();
}

class _WidgetTestState extends State<WidgetTest> {
  double selectedOption = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Test'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomDropDownMenu<String>(
                    label: 'Select Option',
                    hint: 'Choose an option',
                    value: 'option1',
                    items: const [
                      DropdownMenuItem(
                          value: 'option1', child: Text('Option 1')),
                      DropdownMenuItem(
                          value: 'option2', child: Text('Option 2')),
                    ],
                    onChanged: (value) {
                      value = value;
                    },
                  ),
                  const SizedBox(height: TSizes.md),
                  SellerDropDownMenu<String>(
                    hint: 'Select Seller',
                    value: 'seller1',
                    items: const [
                      DropdownMenuItem(
                          value: 'seller1', child: Text('Seller 1')),
                      DropdownMenuItem(
                          value: 'seller2', child: Text('Seller 2')),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
