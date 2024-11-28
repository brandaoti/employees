import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class EmployeeDetailWidget extends StatelessWidget {
  final String title;
  final String content;

  const EmployeeDetailWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSpacing.regular16),
      child: DottedBorder(
        color: AppColors.gray10,
        dashPattern: const [4, 2],
        customPath: (size) => Path()
          ..moveTo(0, size.height)
          ..lineTo(size.width, size.height),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: AppTextStyle.h2),
            Text(content, style: AppTextStyle.h3),
          ],
        ),
      ),
    );
  }
}
