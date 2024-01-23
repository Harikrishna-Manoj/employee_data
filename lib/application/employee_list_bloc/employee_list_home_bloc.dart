import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_home_event.dart';
part 'employee_list_home_state.dart';
part 'employee_list_home_bloc.freezed.dart';

class EmployeeListHomeBloc
    extends Bloc<EmployeeListHomeEvent, EmployeeListHomeState> {
  EmployeeListHomeBloc()
      : super(
            const _Initial(currentEmployeeList: [], previousEmployeeList: [])) {
    on<_FetchEmployees>((event, emit) {});
  }
}
