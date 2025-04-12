import 'package:flutter/material.dart';
import 'package:maujoud_app/utils/theme/theme.dart';
import 'package:maujoud_app/widgettest.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WidgetTest(),
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system, // This will follow system theme
    );
  }
}
