part of 'add_employee_bloc.dart';

@freezed
class AddEmployeeEvent with _$AddEmployeeEvent {
  const factory AddEmployeeEvent.addEmployee(EmployeeModelData? employeeData) =
      _AddEmployee;
}
