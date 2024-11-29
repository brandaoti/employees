import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class SplashWidget extends StatelessWidget {
  final double? width;
  final double? height;

  final Animation<double>? opacity;

  const SplashWidget({
    super.key,
    this.width,
    this.height,
    this.opacity,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        AppAssets.appLogo,
        width: width,
        height: height,
        opacity: opacity,
        fit: BoxFit.cover,
        color: AppColors.white,
      ),
    );
  }
}
