class EmployeeModel {
  final String id;
  final String job;
  final String name;
  final String phone;
  final String image;
  final DateTime admissionDate;

  EmployeeModel({
    required this.id,
    required this.job,
    required this.name,
    required this.phone,
    required this.image,
    required this.admissionDate,
  });

  @override
  String toString() {
    return 'EmployeeModel(id: $id, job: $job, name: $name, phone: $phone, image: $image, admissionDate: $admissionDate)';
  }
}
