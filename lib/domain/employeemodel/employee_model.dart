import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_model.freezed.dart';
part 'employee_model.g.dart';

@freezed
class EmployeeModel with _$EmployeeModel {
  const factory EmployeeModel({
    required String employeeName,
    required String role,
    required String joinDate,
    required String resignDate,
  }) = _EmployeeModel;

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);
}
