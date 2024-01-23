import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:employee_data/presentation/page_home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  final dataPath = await path.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dataPath.path);
  Hive.registerAdapter<EmployeeData>(EmployeeDataAdapter());
  DataBaseService.openDataBase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      home: const ScreenHome(),
    );
  }
}
