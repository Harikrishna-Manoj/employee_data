part of 'employee_list_home_bloc.dart';

@freezed
class EmployeeListHomeEvent with _$EmployeeListHomeEvent {
  const factory EmployeeListHomeEvent.fetchEmployeesEvent() =
      FetchEmployeesEvent;
  const factory EmployeeListHomeEvent.deleteFromEditPageEmployeeEvent(
      int employeeId) = DeleteFromEditPageEmployeeEvent;
  const factory EmployeeListHomeEvent.deleteEmployeeFromHomeEvent(
      int employeeId) = DeleteEmployeeFromHomeEvent;
}
