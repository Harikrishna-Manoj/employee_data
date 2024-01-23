// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) {
  return _EmployeeModel.fromJson(json);
}

/// @nodoc
mixin _$EmployeeModel {
  String get employeeName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get joinDate => throw _privateConstructorUsedError;
  String get resignDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeModelCopyWith<EmployeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeModelCopyWith<$Res> {
  factory $EmployeeModelCopyWith(
          EmployeeModel value, $Res Function(EmployeeModel) then) =
      _$EmployeeModelCopyWithImpl<$Res, EmployeeModel>;
  @useResult
  $Res call(
      {String employeeName, String role, String joinDate, String resignDate});
}

/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res, $Val extends EmployeeModel>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeName = null,
    Object? role = null,
    Object? joinDate = null,
    Object? resignDate = null,
  }) {
    return _then(_value.copyWith(
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String,
      resignDate: null == resignDate
          ? _value.resignDate
          : resignDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeModelImplCopyWith<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  factory _$$EmployeeModelImplCopyWith(
          _$EmployeeModelImpl value, $Res Function(_$EmployeeModelImpl) then) =
      __$$EmployeeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String employeeName, String role, String joinDate, String resignDate});
}

/// @nodoc
class __$$EmployeeModelImplCopyWithImpl<$Res>
    extends _$EmployeeModelCopyWithImpl<$Res, _$EmployeeModelImpl>
    implements _$$EmployeeModelImplCopyWith<$Res> {
  __$$EmployeeModelImplCopyWithImpl(
      _$EmployeeModelImpl _value, $Res Function(_$EmployeeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeName = null,
    Object? role = null,
    Object? joinDate = null,
    Object? resignDate = null,
  }) {
    return _then(_$EmployeeModelImpl(
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      joinDate: null == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String,
      resignDate: null == resignDate
          ? _value.resignDate
          : resignDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeModelImpl implements _EmployeeModel {
  const _$EmployeeModelImpl(
      {required this.employeeName,
      required this.role,
      required this.joinDate,
      required this.resignDate});

  factory _$EmployeeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeModelImplFromJson(json);

  @override
  final String employeeName;
  @override
  final String role;
  @override
  final String joinDate;
  @override
  final String resignDate;

  @override
  String toString() {
    return 'EmployeeModel(employeeName: $employeeName, role: $role, joinDate: $joinDate, resignDate: $resignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeModelImpl &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate) &&
            (identical(other.resignDate, resignDate) ||
                other.resignDate == resignDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, employeeName, role, joinDate, resignDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      __$$EmployeeModelImplCopyWithImpl<_$EmployeeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeModelImplToJson(
      this,
    );
  }
}

abstract class _EmployeeModel implements EmployeeModel {
  const factory _EmployeeModel(
      {required final String employeeName,
      required final String role,
      required final String joinDate,
      required final String resignDate}) = _$EmployeeModelImpl;

  factory _EmployeeModel.fromJson(Map<String, dynamic> json) =
      _$EmployeeModelImpl.fromJson;

  @override
  String get employeeName;
  @override
  String get role;
  @override
  String get joinDate;
  @override
  String get resignDate;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeModelImplCopyWith<_$EmployeeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
