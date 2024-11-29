import 'package:dio/dio.dart';

import '../../../core/client/client.dart';
import '../../../core/errors/default_exception.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/states/result.dart';
import '../mapper/employee_mapper.dart';
import '../models/models.dart';

abstract interface class EmployeeDatasource {
  Future<Output<List<EmployeeModel>>> fetchEmployees();
}

class EmployeeDatasourceImpl implements EmployeeDatasource {
  final HttpClient _client;

  const EmployeeDatasourceImpl(HttpClient client) : _client = client;

  @override
  Future<Output<List<EmployeeModel>>> fetchEmployees() async {
    try {
      final response = await _client.get('/employees');

      final data = response.data as List;

      final employees =
          data.map((element) => EmployeeMapper.fromMap(element)).toList();

      return Success(employees);
    } on DioException catch (error) {
      final exception = DefaultException(message: error.message!);

      return Failure(exception);
    } catch (error) {
      return Failure(
        DefaultException(message: error.toString()),
      );
    }
  }
}
