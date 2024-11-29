import '../models/employee_model.dart';

class EmployeeMapper {
  static EmployeeModel fromMap(Map<String, dynamic> json) {
    return EmployeeModel(
      job: json['job'],
      name: json['name'],
      phone: json['phone'],
      image: json['image'],
      id: json['id'].toString(),
      admissionDate: DateTime.parse(json['admission_date']),
    );
  }
}
