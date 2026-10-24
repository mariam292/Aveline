// import 'package:flutter/material.dart';

// /// Aveline typography system.
// ///
// /// Font family: Inter
// /// Use these styles consistently across the app instead of defining
// /// text styles inside individual screens.
// ///
// /// Add Inter to pubspec.yaml if you bundle the font locally.
// /// If not, remove `fontFamily` below and use the app theme's font family.
// abstract final class AppTextStyles {

//   static const String fontFamily = 'Inter';

//   // Display — large editorial headlines.
//   static const TextStyle displayLarge = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 36,
//     height: 1.15,
//     fontWeight: FontWeight.w600,
//     letterSpacing: -0.8,
//   );

//   static const TextStyle displayMedium = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 30,
//     height: 1.2,
//     fontWeight: FontWeight.w600,
//     letterSpacing: -0.5,
//   );

//   // Headings.
//   static const TextStyle headlineLarge = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 26,
//     height: 1.25,
//     fontWeight: FontWeight.w600,
//     letterSpacing: -0.3,
//   );

//   static const TextStyle headlineMedium = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 22,
//     height: 1.3,
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle headlineSmall = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 18,
//     height: 1.35,
//     fontWeight: FontWeight.w600,
//   );

//   // Body text.
//   static const TextStyle bodyLarge = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 16,
//     height: 1.5,
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle bodyMedium = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 14,
//     height: 1.5,
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle bodySmall = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 12,
//     height: 1.45,
//     fontWeight: FontWeight.w400,
//   );

//   // Labels, buttons, and metadata.
//   static const TextStyle labelLarge = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 16,
//     height: 1.2,
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle labelMedium = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 14,
//     height: 1.2,
//     fontWeight: FontWeight.w500,
//   );

//   static const TextStyle labelSmall = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 12,
//     height: 1.2,
//     fontWeight: FontWeight.w500,
//   );

//   // E-commerce-specific styles.
//   static const TextStyle productName = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 15,
//     height: 1.35,
//     fontWeight: FontWeight.w500,
//   );

//   static const TextStyle productPrice = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 15,
//     height: 1.2,
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle sectionTitle = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 20,
//     height: 1.3,
//     fontWeight: FontWeight.w600,
//     letterSpacing: -0.2,
//   );

//   static const TextStyle button = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 15,
//     height: 1.2,
//     fontWeight: FontWeight.w600,
//   );

//   static const TextStyle input = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 15,
//     height: 1.4,
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle hint = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 14,
//     height: 1.4,
//     fontWeight: FontWeight.w400,
//   );

//   static const TextStyle overline = TextStyle(
//     fontFamily: fontFamily,
//     fontSize: 11,
//     height: 1.3,
//     fontWeight: FontWeight.w600,
//     letterSpacing: 1.2,
//   );
// }

import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle authenticationHeader = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle textFieldHint = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle elevatedButton = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle normalText = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w600,
  );
}
