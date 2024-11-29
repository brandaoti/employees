import '../../../core/helpers/typedef.dart';
import '../models/employee_model.dart';
import 'employee_datasource.dart';

abstract interface class EmployeeRepository {
  Future<Output<List<EmployeeModel>>> fetchUsers();
}

class EmployeeRepositoryImpl implements EmployeeRepository {
  final EmployeeDatasource _datasource;

  const EmployeeRepositoryImpl(EmployeeDatasource datasource)
      : _datasource = datasource;

  @override
  Future<Output<List<EmployeeModel>>> fetchUsers() async {
    final result = await _datasource.fetchEmployees();
    return result;
  }
}
