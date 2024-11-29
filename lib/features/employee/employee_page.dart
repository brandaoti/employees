import 'package:employees/core/helpers/di.dart';
import 'package:employees/core/states/states.dart';

import 'package:flutter/material.dart';

import '../../core/values/values.dart';

import 'employee_controller.dart';
import 'models/models.dart';

import 'widgets/widgets.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({super.key});

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  late EmployeeController _controller;

  @override
  void initState() {
    super.initState();

    _controller = getIt.get<EmployeeController>()..loadEmployees();
  }

  void _onRetry() async {
    _controller.state.value = LoadingState();
    await Future.delayed(const Duration(seconds: 2));
    await _controller.loadEmployees();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomBarWidget(),
            const SizedBox(height: AppSpacing.regular24),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.regular20,
              ),
              child: SearchFieldWidget(
                onChanged: (value) => _controller.searchEmployees(value),
              ),
            ),
            ValueListenableBuilder<BaseState>(
              valueListenable: _controller.state,
              builder: (_, state, __) => switch (state) {
                LoadingState() => const ShowLoadingWidget(),
                ErrorState() => ShowErrorWidget(onRetry: _onRetry),
                SuccessState<List<EmployeeModel>>() =>
                  Expanded(child: EmployeeListWidget(data: state.data)),
                BaseState() => const SizedBox.shrink(),
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
