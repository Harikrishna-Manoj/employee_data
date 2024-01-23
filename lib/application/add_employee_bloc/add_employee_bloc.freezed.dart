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
  EmployeeModelData? get employeeData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModelData? employeeData) addEmployee,
    required TResult Function(EmployeeModelData? employeeData) editEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModelData? employeeData)? addEmployee,
    TResult? Function(EmployeeModelData? employeeData)? editEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModelData? employeeData)? addEmployee,
    TResult Function(EmployeeModelData? employeeData)? editEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddEmployeeEventCopyWith<AddEmployeeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddEmployeeEventCopyWith<$Res> {
  factory $AddEmployeeEventCopyWith(
          AddEmployeeEvent value, $Res Function(AddEmployeeEvent) then) =
      _$AddEmployeeEventCopyWithImpl<$Res, AddEmployeeEvent>;
  @useResult
  $Res call({EmployeeModelData? employeeData});
}

/// @nodoc
class _$AddEmployeeEventCopyWithImpl<$Res, $Val extends AddEmployeeEvent>
    implements $AddEmployeeEventCopyWith<$Res> {
  _$AddEmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeData = freezed,
  }) {
    return _then(_value.copyWith(
      employeeData: freezed == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeModelData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res>
    implements $AddEmployeeEventCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModelData? employeeData});
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
              as EmployeeModelData?,
    ));
  }
}

/// @nodoc

class _$AddEmployeeImpl implements AddEmployee {
  const _$AddEmployeeImpl(this.employeeData);

  @override
  final EmployeeModelData? employeeData;

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
    required TResult Function(EmployeeModelData? employeeData) addEmployee,
    required TResult Function(EmployeeModelData? employeeData) editEmployee,
  }) {
    return addEmployee(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModelData? employeeData)? addEmployee,
    TResult? Function(EmployeeModelData? employeeData)? editEmployee,
  }) {
    return addEmployee?.call(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModelData? employeeData)? addEmployee,
    TResult Function(EmployeeModelData? employeeData)? editEmployee,
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
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class AddEmployee implements AddEmployeeEvent {
  const factory AddEmployee(final EmployeeModelData? employeeData) =
      _$AddEmployeeImpl;

  @override
  EmployeeModelData? get employeeData;
  @override
  @JsonKey(ignore: true)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditEmployeeImplCopyWith<$Res>
    implements $AddEmployeeEventCopyWith<$Res> {
  factory _$$EditEmployeeImplCopyWith(
          _$EditEmployeeImpl value, $Res Function(_$EditEmployeeImpl) then) =
      __$$EditEmployeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EmployeeModelData? employeeData});
}

/// @nodoc
class __$$EditEmployeeImplCopyWithImpl<$Res>
    extends _$AddEmployeeEventCopyWithImpl<$Res, _$EditEmployeeImpl>
    implements _$$EditEmployeeImplCopyWith<$Res> {
  __$$EditEmployeeImplCopyWithImpl(
      _$EditEmployeeImpl _value, $Res Function(_$EditEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeData = freezed,
  }) {
    return _then(_$EditEmployeeImpl(
      freezed == employeeData
          ? _value.employeeData
          : employeeData // ignore: cast_nullable_to_non_nullable
              as EmployeeModelData?,
    ));
  }
}

/// @nodoc

class _$EditEmployeeImpl implements EditEmployee {
  const _$EditEmployeeImpl(this.employeeData);

  @override
  final EmployeeModelData? employeeData;

  @override
  String toString() {
    return 'AddEmployeeEvent.editEmployee(employeeData: $employeeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditEmployeeImpl &&
            (identical(other.employeeData, employeeData) ||
                other.employeeData == employeeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
      __$$EditEmployeeImplCopyWithImpl<_$EditEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EmployeeModelData? employeeData) addEmployee,
    required TResult Function(EmployeeModelData? employeeData) editEmployee,
  }) {
    return editEmployee(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EmployeeModelData? employeeData)? addEmployee,
    TResult? Function(EmployeeModelData? employeeData)? editEmployee,
  }) {
    return editEmployee?.call(employeeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EmployeeModelData? employeeData)? addEmployee,
    TResult Function(EmployeeModelData? employeeData)? editEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(employeeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(EditEmployee value) editEmployee,
  }) {
    return editEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(EditEmployee value)? editEmployee,
  }) {
    return editEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(EditEmployee value)? editEmployee,
    required TResult orElse(),
  }) {
    if (editEmployee != null) {
      return editEmployee(this);
    }
    return orElse();
  }
}

abstract class EditEmployee implements AddEmployeeEvent {
  const factory EditEmployee(final EmployeeModelData? employeeData) =
      _$EditEmployeeImpl;

  @override
  EmployeeModelData? get employeeData;
  @override
  @JsonKey(ignore: true)
  _$$EditEmployeeImplCopyWith<_$EditEmployeeImpl> get copyWith =>
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
