part of 'employee_edit_bloc.dart';

@freezed
class EmployeeEditState with _$EmployeeEditState {
  const factory EmployeeEditState.initial() = Initial;
  const factory EmployeeEditState.loading() = Loading;
  const factory EmployeeEditState.loaded(EmployeeModelData employeeModelData) =
      Loaded;
}
