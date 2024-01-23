import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_home_event.dart';
part 'employee_list_home_state.dart';
part 'employee_list_home_bloc.freezed.dart';

class EmployeeListHomeBloc
    extends Bloc<EmployeeListHomeEvent, EmployeeListHomeState> {
  EmployeeListHomeBloc() : super(const EmployeeListHomeState.initial()) {
    on<FetchEmployees>((event, emit) async {
      emit(const Loading());
      List<EmployeeModelData> allEmployeeList =
          await DataBaseService.fetchEmployeeData();
      List<EmployeeModelData> currentEmployeeList = [];
      List<EmployeeModelData> previousEmployeeList = [];
      for (var element in allEmployeeList) {
        if (element.resignDate == "No date") {
          currentEmployeeList.add(element);
        } else {
          previousEmployeeList.add(element);
        }
      }

      await Future.delayed(const Duration(milliseconds: 1200));
      emit(Fetched(
          currentEmployeeList: currentEmployeeList,
          previousEmployeeList: previousEmployeeList));
    });
    on<DeleteEmployee>((event, emit) {
      DataBaseService.deleteEmployee(event.employeeId);
      add(const FetchEmployees());
    });
  }
}
