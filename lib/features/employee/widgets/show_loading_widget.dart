// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class ShowLoadingWidget extends StatelessWidget {
  final Color? color;
  final double? size;
  final String? message;

  const ShowLoadingWidget({
    super.key,
    this.size,
    this.color,
    this.message = AppStrings.loading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.medium80),
      child: Center(
        child: Column(
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                color ?? AppColors.primary,
              ),
            ),
            if (message != null) ...[
              const SizedBox(height: AppSpacing.regular16),
              Text(
                message!,
                style: AppTextStyle.h3,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
