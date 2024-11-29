import 'package:flutter/material.dart';

import '../../../core/values/values.dart';

class CustomBarWidget extends StatelessWidget {
  const CustomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.regular20,
      ).copyWith(top: AppSpacing.little12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: AppColors.gray05,
            child: Text('CG', style: AppTextStyle.h3),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  color: AppColors.black,
                  Icons.notifications_none_sharp,
                ),
              ),
              Positioned(
                top: AppSpacing.little08,
                right: AppSpacing.little04,
                child: Container(
                  width: AppSpacing.regular20,
                  height: AppSpacing.regular20,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primary,
                  ),
                  child: const Text(
                    '02',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
