import 'package:flutter/material.dart';

import '../../../core/helpers/helpers.dart';
import '../../../core/values/values.dart';
import '../models/employee_model.dart';
import 'widgets.dart';

class EmployeeListWidget extends StatelessWidget {
  final List<EmployeeModel> data;

  const EmployeeListWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    const borderSide = BorderSide(color: AppColors.gray10);

    Border border(bool isLast) => Border(
          top: borderSide,
          left: borderSide,
          right: borderSide,
          bottom: isLast ? borderSide : BorderSide.none,
        );

    if (data.isEmpty) return const NoEmployeeFoundWidget();

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacing.regular24,
        horizontal: AppSpacing.regular20,
      ),
      child: Column(
        children: [
          const TableHeaderWidget(),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final employee = data[index];

                final isLast = index == data.length - 1;

                return Column(
                  children: [
                    Container(
                      constraints: const BoxConstraints(
                        minHeight: AppSpacing.medium60,
                      ),
                      decoration: BoxDecoration(border: border(isLast)),
                      child: ExpansionTile(
                        iconColor: AppColors.primary,
                        collapsedIconColor: AppColors.primary,
                        title: Padding(
                          padding: const EdgeInsets.only(
                            left: AppSpacing.little12,
                          ),
                          child: Text(employee.name, style: AppTextStyle.h3),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(employee.image),
                        ),
                        tilePadding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.little12,
                          horizontal: AppSpacing.regular16,
                        ),
                        childrenPadding: const EdgeInsets.symmetric(
                          vertical: AppSpacing.regular20,
                          horizontal: AppSpacing.regular16,
                        ),
                        children: [
                          Column(
                            children: [
                              EmployeeDetailWidget(
                                title: AppStrings.job,
                                content: employee.job,
                              ),
                              EmployeeDetailWidget(
                                title: AppStrings.admissionDate,
                                content: employee.admissionDate
                                    .toString()
                                    .formatToDate(),
                              ),
                              EmployeeDetailWidget(
                                title: AppStrings.phone,
                                content: employee.phone.applyPhoneNumber(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
