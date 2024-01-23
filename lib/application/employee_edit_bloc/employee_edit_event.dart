part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditEvent with _$EmployeeEditEvent {
  const factory EmployeeEditEvent.fetchDataEvent(int? employeeId) =
      FetchDataEvent;
}
