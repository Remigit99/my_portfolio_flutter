import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  /// Dynamic padding helper
  static EdgeInsets pagePadding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.all(12); // smaller padding for mobile
    } else if (isTablet(context)) {
      return const EdgeInsets.all(20); // medium padding
    } else {
      return const EdgeInsets.symmetric(horizontal: 150, vertical: 20);
    }
  }
}
