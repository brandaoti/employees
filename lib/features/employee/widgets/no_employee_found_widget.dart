import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class NoEmployeeFoundWidget extends StatelessWidget {
  const NoEmployeeFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        AppStrings.noEmployeeFound,
        style: AppTextStyle.h2,
      ),
    );
  }
}
