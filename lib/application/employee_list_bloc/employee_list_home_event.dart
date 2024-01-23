part of 'employee_list_home_bloc.dart';

@freezed
class EmployeeListHomeEvent with _$EmployeeListHomeEvent {
  const factory EmployeeListHomeEvent.fetchEmployees() = FetchEmployees;
}
