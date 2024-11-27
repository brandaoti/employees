import 'package:employees/core/values/app_colors.dart';
import 'package:flutter/material.dart';

import 'values.dart';

class AppShadow {
  static BoxShadow boxShadow({
    double dx = 0,
    double dy = 1,
    double blurRadius = 2,
    double spreadRadius = 0,
    Color color = AppColors.blackOpacity20,
  }) =>
      BoxShadow(
        spreadRadius: 0,
        blurRadius: blurRadius,
        offset: Offset(dx, dy),
        color: Colors.blue,
      );
}
