import 'package:hive/hive.dart';
part 'database_model.g.dart';

@HiveType(typeId: 0)
class EmployeeModelData extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  String? employeeName;

  @HiveField(2)
  String? role;

  @HiveField(3)
  String? joinDate;

  @HiveField(4)
  String? resignDate;

  EmployeeModelData(
      {this.id,
      required this.employeeName,
      required this.role,
      required this.joinDate,
      required this.resignDate});
}
