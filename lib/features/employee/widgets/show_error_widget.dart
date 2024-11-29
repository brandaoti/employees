import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class ShowErrorWidget extends StatelessWidget {
  final VoidCallback? onRetry;

  final String? errorMessage;

  const ShowErrorWidget({
    super.key,
    this.onRetry,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (errorMessage != null) ...[
              Text(
                errorMessage ?? AppStrings.somethingWentWrong,
                style: AppTextStyle.h2,
              ),
              const SizedBox(height: 50),
            ],
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
