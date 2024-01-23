// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddEmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeData? employeeData) addEmployee,
    required TResult Function(String? joinDate) selecteJoinDate,
    required TResult Function(String? resignDate) selecteResignDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeData? employeeData)? addEmployee,
    TResult? Function(String? joinDate)? selecteJoinDate,
    TResult? Function(String? resignDate)? selecteResignDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeData? employeeData)? addEmployee,
    TResult Function(String? joinDate)? selecteJoinDate,
    TResult Function(String? resignDate)? selecteResignDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_SelecteJoinDate value) selecteJoinDate,
    required TResult Function(_SelecteResignDate value) selecteResignDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult? Function(_SelecteResignDate value)? selecteResignDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult Function(_SelecteResignDate value)? selecteResignDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEmployeeEventCopyWith<$Res> {
  factory $AddEmployeeEventCopyWith(
          AddEmployeeEvent value, $Res Function(AddEmployeeEvent) then) =
      _$AddEmployeeEventCopyWithImpl<$Res, AddEmployeeEvent>;
}

/// @nodoc
class _$AddEmployeeEventCopyWithImpl<$Res, $Val extends AddEmployeeEvent>
    implements $AddEmployeeEventCopyWith<$Res> {
  _$AddEmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeData? employeeData});
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeData = freezed,
  }) {
    return _then(_$AddEmployeeImpl(
      freezed == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeData?,
    ));
  }
}

/// @nodoc

class _$AddEmployeeImpl implements _AddEmployee {
  const _$AddEmployeeImpl(this.employeeData);

  @override
  final EmployeeData? employeeData;

  @override
  String toString() {
    return 'AddEmployeeEvent.addEmployee(employeeData: $employeeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeImpl &&
            (identical(other.employeeData, employeeData) ||
                other.employeeData == employeeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeData? employeeData) addEmployee,
    required TResult Function(String? joinDate) selecteJoinDate,
    required TResult Function(String? resignDate) selecteResignDate,
  }) {
    return addEmployee(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeData? employeeData)? addEmployee,
    TResult? Function(String? joinDate)? selecteJoinDate,
    TResult? Function(String? resignDate)? selecteResignDate,
  }) {
    return addEmployee?.call(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeData? employeeData)? addEmployee,
    TResult Function(String? joinDate)? selecteJoinDate,
    TResult Function(String? resignDate)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(employeeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_SelecteJoinDate value) selecteJoinDate,
    required TResult Function(_SelecteResignDate value) selecteResignDate,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult? Function(_SelecteResignDate value)? selecteResignDate,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult Function(_SelecteResignDate value)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class _AddEmployee implements AddEmployeeEvent {
  const factory _AddEmployee(final EmployeeData? employeeData) =
      _$AddEmployeeImpl;

  EmployeeData? get employeeData;
  @JsonKey(ignore: true)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelecteJoinDateImplCopyWith<$Res> {
  factory _$$SelecteJoinDateImplCopyWith(_$SelecteJoinDateImpl value,
          $Res Function(_$SelecteJoinDateImpl) then) =
      __$$SelecteJoinDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? joinDate});
}

/// @nodoc
class __$$SelecteJoinDateImplCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res, _$SelecteJoinDateImpl>
    implements _$$SelecteJoinDateImplCopyWith<$Res> {
  __$$SelecteJoinDateImplCopyWithImpl(
      _$SelecteJoinDateImpl _value, $Res Function(_$SelecteJoinDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joinDate = freezed,
  }) {
    return _then(_$SelecteJoinDateImpl(
      freezed == joinDate
          ? _value.joinDate
          : joinDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelecteJoinDateImpl implements _SelecteJoinDate {
  _$SelecteJoinDateImpl(this.joinDate);

  @override
  final String? joinDate;

  @override
  String toString() {
    return 'AddEmployeeEvent.selecteJoinDate(joinDate: $joinDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelecteJoinDateImpl &&
            (identical(other.joinDate, joinDate) ||
                other.joinDate == joinDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joinDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelecteJoinDateImplCopyWith<_$SelecteJoinDateImpl> get copyWith =>
      __$$SelecteJoinDateImplCopyWithImpl<_$SelecteJoinDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeData? employeeData) addEmployee,
    required TResult Function(String? joinDate) selecteJoinDate,
    required TResult Function(String? resignDate) selecteResignDate,
  }) {
    return selecteJoinDate(joinDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeData? employeeData)? addEmployee,
    TResult? Function(String? joinDate)? selecteJoinDate,
    TResult? Function(String? resignDate)? selecteResignDate,
  }) {
    return selecteJoinDate?.call(joinDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeData? employeeData)? addEmployee,
    TResult Function(String? joinDate)? selecteJoinDate,
    TResult Function(String? resignDate)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (selecteJoinDate != null) {
      return selecteJoinDate(joinDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_SelecteJoinDate value) selecteJoinDate,
    required TResult Function(_SelecteResignDate value) selecteResignDate,
  }) {
    return selecteJoinDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult? Function(_SelecteResignDate value)? selecteResignDate,
  }) {
    return selecteJoinDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult Function(_SelecteResignDate value)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (selecteJoinDate != null) {
      return selecteJoinDate(this);
    }
    return orElse();
  }
}

abstract class _SelecteJoinDate implements AddEmployeeEvent {
  factory _SelecteJoinDate(final String? joinDate) = _$SelecteJoinDateImpl;

  String? get joinDate;
  @JsonKey(ignore: true)
  _$$SelecteJoinDateImplCopyWith<_$SelecteJoinDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelecteResignDateImplCopyWith<$Res> {
  factory _$$SelecteResignDateImplCopyWith(_$SelecteResignDateImpl value,
          $Res Function(_$SelecteResignDateImpl) then) =
      __$$SelecteResignDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? resignDate});
}

/// @nodoc
class __$$SelecteResignDateImplCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res, _$SelecteResignDateImpl>
    implements _$$SelecteResignDateImplCopyWith<$Res> {
  __$$SelecteResignDateImplCopyWithImpl(_$SelecteResignDateImpl _value,
      $Res Function(_$SelecteResignDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resignDate = freezed,
  }) {
    return _then(_$SelecteResignDateImpl(
      freezed == resignDate
          ? _value.resignDate
          : resignDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SelecteResignDateImpl implements _SelecteResignDate {
  _$SelecteResignDateImpl(this.resignDate);

  @override
  final String? resignDate;

  @override
  String toString() {
    return 'AddEmployeeEvent.selecteResignDate(resignDate: $resignDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelecteResignDateImpl &&
            (identical(other.resignDate, resignDate) ||
                other.resignDate == resignDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resignDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelecteResignDateImplCopyWith<_$SelecteResignDateImpl> get copyWith =>
      __$$SelecteResignDateImplCopyWithImpl<_$SelecteResignDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeData? employeeData) addEmployee,
    required TResult Function(String? joinDate) selecteJoinDate,
    required TResult Function(String? resignDate) selecteResignDate,
  }) {
    return selecteResignDate(resignDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeData? employeeData)? addEmployee,
    TResult? Function(String? joinDate)? selecteJoinDate,
    TResult? Function(String? resignDate)? selecteResignDate,
  }) {
    return selecteResignDate?.call(resignDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeData? employeeData)? addEmployee,
    TResult Function(String? joinDate)? selecteJoinDate,
    TResult Function(String? resignDate)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (selecteResignDate != null) {
      return selecteResignDate(resignDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEmployee value) addEmployee,
    required TResult Function(_SelecteJoinDate value) selecteJoinDate,
    required TResult Function(_SelecteResignDate value) selecteResignDate,
  }) {
    return selecteResignDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEmployee value)? addEmployee,
    TResult? Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult? Function(_SelecteResignDate value)? selecteResignDate,
  }) {
    return selecteResignDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEmployee value)? addEmployee,
    TResult Function(_SelecteJoinDate value)? selecteJoinDate,
    TResult Function(_SelecteResignDate value)? selecteResignDate,
    required TResult orElse(),
  }) {
    if (selecteResignDate != null) {
      return selecteResignDate(this);
    }
    return orElse();
  }
}

abstract class _SelecteResignDate implements AddEmployeeEvent {
  factory _SelecteResignDate(final String? resignDate) =
      _$SelecteResignDateImpl;

  String? get resignDate;
  @JsonKey(ignore: true)
  _$$SelecteResignDateImplCopyWith<_$SelecteResignDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddEmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEmployeeStateCopyWith<$Res> {
  factory $AddEmployeeStateCopyWith(
          AddEmployeeState value, $Res Function(AddEmployeeState) then) =
      _$AddEmployeeStateCopyWithImpl<$Res, AddEmployeeState>;
}

/// @nodoc
class _$AddEmployeeStateCopyWithImpl<$Res, $Val extends AddEmployeeState>
    implements $AddEmployeeStateCopyWith<$Res> {
  _$AddEmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AddEmployeeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddEmployeeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddEmployeeState {
  const factory _Initial() = _$InitialImpl;
}