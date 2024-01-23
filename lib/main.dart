import 'dart:io';

import 'package:employee_data/application/add_employee_bloc/add_employee_bloc.dart';
import 'package:employee_data/application/employee_edit_bloc/employee_edit_bloc.dart';
import 'package:employee_data/application/employee_list_bloc/employee_list_home_bloc.dart';
import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:employee_data/presentation/page_home/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Directory dataPath = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(dataPath.path);
  Hive.registerAdapter<EmployeeModelData>(EmployeeModelDataAdapter());
  DataBaseService.openDataBase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AddEmployeeBloc(),
          ),
          BlocProvider(
            create: (context) => EmployeeListHomeBloc(),
          ),
          BlocProvider(
            create: (context) => EmployeeEditBloc(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appThemeData,
          home: const ScreenHome(),
        ));
  }
}
