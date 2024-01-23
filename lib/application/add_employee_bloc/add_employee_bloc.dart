import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_employee_event.dart';
part 'add_employee_state.dart';
part 'add_employee_bloc.freezed.dart';

class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  AddEmployeeBloc() : super(const _Initial()) {
    on<AddEmployee>((event, emit) async {
      int uniqueId = DateTime.now().millisecondsSinceEpoch;
      event.employeeData?.id = uniqueId;
      final employeeData = event.employeeData;
      // ignore: unused_local_variable
      await DataBaseService.addEmployeeData(employeeData!);
    });
    on<EditEmployee>((event, emit) async {
      final employeeData = event.employeeData;
      await DataBaseService.updateEmployeeData(employeeData!);
    });
  }
}
