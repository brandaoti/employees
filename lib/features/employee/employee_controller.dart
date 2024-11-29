import 'package:employees/core/helpers/helpers.dart';

import '../../core/states/states.dart';
import 'package:flutter/material.dart';

import 'data/employee_repository.dart';
import 'models/employee_model.dart';

abstract interface class EmployeeController {
  ValueNotifier<BaseState> get state;

  Future<void> loadEmployees();
  void searchEmployees(String query);

  void dispose();
}

class EmployeeControllerImpl implements EmployeeController {
  final EmployeeRepository _repository;

  EmployeeControllerImpl(
    EmployeeRepository repository,
  ) : _repository = repository;

  late List<EmployeeModel> _employees;

  final _state = ValueNotifier<BaseState>(InitialState());

  @override
  ValueNotifier<BaseState> get state => _state;

  @override
  Future<void> loadEmployees() async {
    _state.value = LoadingState();

    final result = await _repository.fetchUsers();

    switch (result) {
      case Success(data: final data):
        _employees = data;
        _state.value = SuccessState(data);
      case Failure(error: final error):
        _state.value = ErrorState(error);
    }
  }

  @override
  void searchEmployees(String query) {
    final normalizedQuery = query.textNormalize();

    final filteredEmployees = _employees.where((employee) {
      final normalizeddJob = employee.job.textNormalize();
      final normalizeddName = employee.name.textNormalize();
      final normalizeddPhone = employee.phone.textNormalize();

      return normalizeddName.contains(normalizedQuery) ||
          normalizeddJob.contains(normalizedQuery) ||
          normalizeddPhone.contains(normalizedQuery);
    }).toList();

    _state.value = SuccessState(filteredEmployees);
  }

  @override
  void dispose() {
    _state.dispose();
  }
}
