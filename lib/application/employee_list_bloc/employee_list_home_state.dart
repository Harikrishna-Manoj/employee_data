part of 'employee_list_home_bloc.dart';

@freezed
class EmployeeListHomeState with _$EmployeeListHomeState {
  const factory EmployeeListHomeState.initial(
      {required List<EmployeeModelData> currentEmployeeList,
      required List<EmployeeModelData> previousEmployeeList}) = _Initial;
}
