import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DataBaseService {
  static openDataBase() async {
    final collection = await BoxCollection.open(
      'MyFirstFluffyBox',
      {
        'employees',
      },
      path: './',
    );
    collection.openBox<EmployeeData>("employee");
  }
}
