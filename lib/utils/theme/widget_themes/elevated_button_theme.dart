// import 'package:flutter/material.dart';
// import '../../constants/colors.dart';
// import '../../constants/sizes.dart';

// /* -- Light & Dark Elevated Button Themes -- */
// class TElevatedButtonTheme {
//   TElevatedButtonTheme._(); //To avoid creating instances

//   /* -- Light Theme -- */
//   static final lightElevatedButtonTheme = ElevatedButtonThemeData(
//     style: ButtonStyle(
//       elevation: WidgetStateProperty.all(0),
//       backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//         if (states.contains(WidgetState.disabled)) {
//           return TColors.lSurfaceVariant.withOpacity(0.12);
//         }
//         if (states.contains(WidgetState.pressed)) {
//           return TColors.lPrimaryContainer;
//         }
//         return TColors.lPrimary;
//       }),
//       foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//         if (states.contains(WidgetState.disabled)) {
//           return TColors.lOnSurfaceVariant.withOpacity(0.38);
//         }
//         return TColors.white;
//       }),
//       padding: WidgetStateProperty.all<EdgeInsets>(
//         const EdgeInsets.symmetric(horizontal: TSizes.lg, vertical: TSizes.md),
//       ),
//       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//         RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
//       ),
//       minimumSize: WidgetStateProperty.all<Size>(
//         const Size(double.infinity, TSizes.buttonHeight),
//       ),
//     ),
//   );

//   /* -- Dark Theme -- */
//   static final darkElevatedButtonTheme = ElevatedButtonThemeData(
//     style: ButtonStyle(
//       elevation: WidgetStateProperty.all(0),
//       backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//         if (states.contains(WidgetState.disabled)) {
//           return TColors.dSurfaceVariant.withOpacity(0.12);
//         }
//         if (states.contains(WidgetState.pressed)) {
//           return TColors.dPrimaryContainer;
//         }
//         return TColors.dPrimary;
//       }),
//       foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
//         if (states.contains(WidgetState.disabled)) {
//           return TColors.dOnSurfaceVariant.withOpacity(0.38);
//         }
//         return TColors.white;
//       }),
//       padding: WidgetStateProperty.all<EdgeInsets>(
//         const EdgeInsets.symmetric(horizontal: TSizes.lg, vertical: TSizes.md),
//       ),
//       shape: WidgetStateProperty.all<RoundedRectangleBorder>(
//         RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
//       ),
//       minimumSize: WidgetStateProperty.all<Size>(
//         const Size(double.infinity, TSizes.buttonHeight),
//       ),
//     ),
//   );
// }
