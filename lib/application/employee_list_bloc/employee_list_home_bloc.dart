// ignore_for_file: no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'package:employee_data/core/constant.dart';
import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'employee_list_home_event.dart';
part 'employee_list_home_state.dart';
part 'employee_list_home_bloc.freezed.dart';

class EmployeeListHomeBloc
    extends Bloc<EmployeeListHomeEvent, EmployeeListHomeState> {
  EmployeeModelData? _deletedEmployees;
  List<EmployeeModelData> currentEmployeeList = [];
  List<EmployeeModelData> previousEmployeeList = [];
  EmployeeListHomeBloc() : super(const EmployeeListHomeState.initial());
  late int recentIndex;
  @override
  Stream<EmployeeListHomeState> mapEventToState(
      EmployeeListHomeEvent event) async* {
    yield* event.when(
      fetchEmployeesEvent: () async* {
        yield (const Loading());
        List<EmployeeModelData> allEmployeeList =
            await DataBaseService.fetchEmployeeData();
        currentEmployeeList.clear();
        previousEmployeeList.clear();
        for (var element in allEmployeeList) {
          if (element.resignDate == "No date") {
            currentEmployeeList.add(element);
          } else {
            previousEmployeeList.add(element);
          }
        }

        await Future.delayed(const Duration(milliseconds: 1200));
        yield EmployeeListHomeState.fetched(
          currentEmployeeList: currentEmployeeList,
          previousEmployeeList: previousEmployeeList,
        );
      },
      deleteFromEditPageEmployeeEvent: (employeeId) async* {
        DataBaseService.deleteEmployee(employeeId);

        // yield EmployeeListHomeState.fetched(
        //   currentEmployeeList: currentEmployeeList,
        //   previousEmployeeList: previousEmployeeList,
        // );
        add(const EmployeeListHomeEvent.fetchEmployeesEvent());
      },
      deleteEmployeeFromHomeEvent: (employeeId) async* {
        final Box employeeBox =
            await Hive.openBox<EmployeeModelData>("employee");
        List<EmployeeModelData> employeeDataList = [...employeeBox.values];
        int index =
            employeeDataList.indexWhere((element) => element.id! == employeeId);
        recentIndex = index;
        _deletedEmployees = employeeDataList[index];
        employeeBox.deleteAt(index);

        add(const EmployeeListHomeEvent.fetchEmployeesEvent());
      },
    );
  }
}
