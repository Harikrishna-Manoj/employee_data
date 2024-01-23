// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeModelImpl _$$EmployeeModelImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeModelImpl(
      employeeName: json['employeeName'] as String,
      role: json['role'] as String,
      joinDate: json['joinDate'] as String,
      resignDate: json['resignDate'] as String,
    );

Map<String, dynamic> _$$EmployeeModelImplToJson(_$EmployeeModelImpl instance) =>
    <String, dynamic>{
      'employeeName': instance.employeeName,
      'role': instance.role,
      'joinDate': instance.joinDate,
      'resignDate': instance.resignDate,
    };
