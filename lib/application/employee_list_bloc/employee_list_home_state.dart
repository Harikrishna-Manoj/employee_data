part of 'employee_list_home_bloc.dart';

@freezed
class EmployeeListHomeState with _$EmployeeListHomeState {
  const factory EmployeeListHomeState.initial() = Initial;
  const factory EmployeeListHomeState.loading() = Loading;
  const factory EmployeeListHomeState.fetched(
      {required List<EmployeeModelData> currentEmployeeList,
      required List<EmployeeModelData> previousEmployeeList}) = Fetched;
}
