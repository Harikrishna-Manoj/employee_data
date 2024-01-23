import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_employee_event.dart';
part 'add_employee_state.dart';
part 'add_employee_bloc.freezed.dart';

class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  AddEmployeeBloc() : super(const _Initial()) {
    on<_AddEmployee>((event, emit) async {
      int uniqueId = DateTime.now().millisecondsSinceEpoch;
      final EmployeeModelData employeeData = EmployeeModelData(
          id: uniqueId,
          employeeName: event.employeeData?.employeeName,
          role: event.employeeData?.role,
          joinDate: event.employeeData?.joinDate,
          resignDate: event.employeeData?.resignDate);
      // ignore: unused_local_variable
      int id = await DataBaseService.addEmployeeData(employeeData);
    });
  }
}
