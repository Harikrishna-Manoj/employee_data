part of 'add_employee_bloc.dart';

@freezed
class AddEmployeeEvent with _$AddEmployeeEvent {
  const factory AddEmployeeEvent.addEmployee(EmployeeData? employeeData) =
      _AddEmployee;
  factory AddEmployeeEvent.selecteJoinDate(String? joinDate) = _SelecteJoinDate;
  factory AddEmployeeEvent.selecteResignDate(String? resignDate) =
      _SelecteResignDate;
}
