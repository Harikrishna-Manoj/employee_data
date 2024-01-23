import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:employee_data/infrastructure/database_service/data_base_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_edit_event.dart';
part 'employee_edit_state.dart';
part 'employee_edit_bloc.freezed.dart';

class EmployeeEditBloc extends Bloc<EmployeeEditEvent, EmployeeEditState> {
  EmployeeEditBloc() : super(const Initial()) {
    on<FetchDataEvent>((event, emit) async {
      emit(const Loading());
      final EmployeeModelData employeeModelData =
          await DataBaseService.fetchDataForUpdation(event.employeeId!);
      emit(Loaded(employeeModelData));
    });
  }
}
