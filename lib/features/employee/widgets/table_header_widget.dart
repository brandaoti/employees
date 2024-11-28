import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class TableHeaderWidget extends StatelessWidget {
  const TableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: AppSpacing.little14,
        top: AppSpacing.little14,
        bottom: AppSpacing.little14,
        right: AppSpacing.regular24,
      ),
      decoration: const BoxDecoration(
        color: AppColors.blue10,
      ),
      child: Row(
        children: [
          Text(
            AppStrings.photo.toUpperCase(),
            style: AppTextStyle.h2,
          ),
          const SizedBox(width: AppSpacing.regular24),
          Text(
            AppStrings.name.toUpperCase(),
            style: AppTextStyle.h2,
          ),
          const Spacer(),
          Container(
            width: AppSpacing.little08,
            height: AppSpacing.little08,
            decoration: const BoxDecoration(
              color: AppColors.black,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
