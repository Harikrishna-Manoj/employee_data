import 'dart:developer';

import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataBaseService {
  static Future<void> openDataBase() async {
    await Hive.openBox<EmployeeModelData>("employee");
  }

  static Future<int> addEmployeeData(EmployeeModelData employeesData) async {
    final Box employeeBox = Hive.box<EmployeeModelData>("employee");
    Future<int> id = employeeBox.add(employeesData);
    return id;
  }
}
