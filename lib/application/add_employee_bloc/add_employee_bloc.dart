import 'package:employee_data/domain/database_model/database_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_employee_event.dart';
part 'add_employee_state.dart';
part 'add_employee_bloc.freezed.dart';

class AddEmployeeBloc extends Bloc<AddEmployeeEvent, AddEmployeeState> {
  AddEmployeeBloc() : super(const _Initial()) {
    on<_AddEmployee>((event, emit) {});
  }
}
