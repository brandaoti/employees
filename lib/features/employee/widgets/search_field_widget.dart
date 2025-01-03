import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class SearchFieldWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  const SearchFieldWidget({
    super.key,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.employees,
          style: AppTextStyle.h1,
        ),
        const SizedBox(height: AppSpacing.little14),
        TextFormField(
          onChanged: onChanged,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.gray05,
            contentPadding: const EdgeInsets.symmetric(
              vertical: AppSpacing.little14,
              horizontal: AppSpacing.regular16,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(100.0),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: AppColors.black,
            ),
            hintText: AppStrings.search,
            hintStyle: AppTextStyle.h2,
          ),
        ),
      ],
    );
  }
}
