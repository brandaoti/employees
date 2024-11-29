import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class ShowErrorWidget extends StatelessWidget {
  final VoidCallback? onRetry;

  const ShowErrorWidget({
    super.key,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.replay,
              size: AppSpacing.medium60,
              color: AppColors.primary,
            ),
            TextButton(
              onPressed: onRetry,
              child: const Text(
                AppStrings.onRetry,
                style: AppTextStyle.h3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
