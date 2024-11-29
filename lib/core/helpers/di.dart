import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../features/employee/data/data.dart';
import '../../features/employee/employee_controller.dart';
import '../../features/splash/splash_controller.dart';
import '../client/client.dart';

final getIt = GetIt.I;
void dependencyInjection() {
  getIt.registerSingleton<HttpClient>(
    DioClient.defaultClient(
      Dio(BaseOptions(
        baseUrl: const String.fromEnvironment('BASE_URL'),
      )),
      PrettyDioLogger(requestBody: true, requestHeader: true),
    ),
  );

  getIt.registerFactory<SplashController>(
    () => SplashControllerImpl(),
  );

  getIt.registerLazySingleton<EmployeeDatasource>(
    () => EmployeeDatasourceImpl(getIt()),
  );

  getIt.registerLazySingleton<EmployeeRepository>(
    () => EmployeeRepositoryImpl(getIt()),
  );

  getIt.registerLazySingleton<EmployeeController>(
    () => EmployeeControllerImpl(getIt()),
  );
}
