import 'package:employee_data/domain/employeemodel/employee_model.dart';
import 'package:hive/hive.dart';
part 'database_model.g.dart';

@HiveType(typeId: 0)
class EmployeeData extends HiveObject {
  @HiveField(0)
  int? id;

  @HiveField(1)
  EmployeeModel? employeeData;
  EmployeeData(this.employeeData);
}
