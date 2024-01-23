// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_list_home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeListHomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int employeeId) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int employeeId)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int employeeId)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListHomeEventCopyWith<$Res> {
  factory $EmployeeListHomeEventCopyWith(EmployeeListHomeEvent value,
          $Res Function(EmployeeListHomeEvent) then) =
      _$EmployeeListHomeEventCopyWithImpl<$Res, EmployeeListHomeEvent>;
}

/// @nodoc
class _$EmployeeListHomeEventCopyWithImpl<$Res,
        $Val extends EmployeeListHomeEvent>
    implements $EmployeeListHomeEventCopyWith<$Res> {
  _$EmployeeListHomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchEmployeesImplCopyWith<$Res> {
  factory _$$FetchEmployeesImplCopyWith(_$FetchEmployeesImpl value,
          $Res Function(_$FetchEmployeesImpl) then) =
      __$$FetchEmployeesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchEmployeesImplCopyWithImpl<$Res>
    extends _$EmployeeListHomeEventCopyWithImpl<$Res, _$FetchEmployeesImpl>
    implements _$$FetchEmployeesImplCopyWith<$Res> {
  __$$FetchEmployeesImplCopyWithImpl(
      _$FetchEmployeesImpl _value, $Res Function(_$FetchEmployeesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchEmployeesImpl implements FetchEmployees {
  const _$FetchEmployeesImpl();

  @override
  String toString() {
    return 'EmployeeListHomeEvent.fetchEmployees()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchEmployeesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int employeeId) deleteEmployee,
  }) {
    return fetchEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int employeeId)? deleteEmployee,
  }) {
    return fetchEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int employeeId)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return fetchEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return fetchEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees(this);
    }
    return orElse();
  }
}

abstract class FetchEmployees implements EmployeeListHomeEvent {
  const factory FetchEmployees() = _$FetchEmployeesImpl;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int employeeId});
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeListHomeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements DeleteEmployee {
  const _$DeleteEmployeeImpl(this.employeeId);

  @override
  final int employeeId;

  @override
  String toString() {
    return 'EmployeeListHomeEvent.deleteEmployee(employeeId: $employeeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employeeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEmployees,
    required TResult Function(int employeeId) deleteEmployee,
  }) {
    return deleteEmployee(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
    TResult? Function(int employeeId)? deleteEmployee,
  }) {
    return deleteEmployee?.call(employeeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    TResult Function(int employeeId)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(employeeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEmployees value) fetchEmployees,
    required TResult Function(DeleteEmployee value) deleteEmployee,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEmployees value)? fetchEmployees,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEmployees value)? fetchEmployees,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class DeleteEmployee implements EmployeeListHomeEvent {
  const factory DeleteEmployee(final int employeeId) = _$DeleteEmployeeImpl;

  int get employeeId;
  @JsonKey(ignore: true)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeListHomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Fetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Fetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListHomeStateCopyWith<$Res> {
  factory $EmployeeListHomeStateCopyWith(EmployeeListHomeState value,
          $Res Function(EmployeeListHomeState) then) =
      _$EmployeeListHomeStateCopyWithImpl<$Res, EmployeeListHomeState>;
}

/// @nodoc
class _$EmployeeListHomeStateCopyWithImpl<$Res,
        $Val extends EmployeeListHomeState>
    implements $EmployeeListHomeStateCopyWith<$Res> {
  _$EmployeeListHomeStateCopyWithImpl(this._value, this._then);

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
    extends _$EmployeeListHomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'EmployeeListHomeState.initial()';
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
    required TResult Function() loading,
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        fetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Fetched value) fetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Fetched value)? fetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements EmployeeListHomeState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$EmployeeListHomeStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'EmployeeListHomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        fetched,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Fetched value) fetched,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Fetched value)? fetched,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements EmployeeListHomeState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$FetchedImplCopyWith<$Res> {
  factory _$$FetchedImplCopyWith(
          _$FetchedImpl value, $Res Function(_$FetchedImpl) then) =
      __$$FetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<EmployeeModelData> currentEmployeeList,
      List<EmployeeModelData> previousEmployeeList});
}

/// @nodoc
class __$$FetchedImplCopyWithImpl<$Res>
    extends _$EmployeeListHomeStateCopyWithImpl<$Res, _$FetchedImpl>
    implements _$$FetchedImplCopyWith<$Res> {
  __$$FetchedImplCopyWithImpl(
      _$FetchedImpl _value, $Res Function(_$FetchedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
  }) {
    return _then(_$FetchedImpl(
      currentEmployeeList: null == currentEmployeeList
          ? _value._currentEmployeeList
          : currentEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModelData>,
      previousEmployeeList: null == previousEmployeeList
          ? _value._previousEmployeeList
          : previousEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModelData>,
    ));
  }
}

/// @nodoc

class _$FetchedImpl implements Fetched {
  const _$FetchedImpl(
      {required final List<EmployeeModelData> currentEmployeeList,
      required final List<EmployeeModelData> previousEmployeeList})
      : _currentEmployeeList = currentEmployeeList,
        _previousEmployeeList = previousEmployeeList;

  final List<EmployeeModelData> _currentEmployeeList;
  @override
  List<EmployeeModelData> get currentEmployeeList {
    if (_currentEmployeeList is EqualUnmodifiableListView)
      return _currentEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployeeList);
  }

  final List<EmployeeModelData> _previousEmployeeList;
  @override
  List<EmployeeModelData> get previousEmployeeList {
    if (_previousEmployeeList is EqualUnmodifiableListView)
      return _previousEmployeeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployeeList);
  }

  @override
  String toString() {
    return 'EmployeeListHomeState.fetched(currentEmployeeList: $currentEmployeeList, previousEmployeeList: $previousEmployeeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedImpl &&
            const DeepCollectionEquality()
                .equals(other._currentEmployeeList, _currentEmployeeList) &&
            const DeepCollectionEquality()
                .equals(other._previousEmployeeList, _previousEmployeeList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentEmployeeList),
      const DeepCollectionEquality().hash(_previousEmployeeList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      __$$FetchedImplCopyWithImpl<_$FetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        fetched,
  }) {
    return fetched(currentEmployeeList, previousEmployeeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
  }) {
    return fetched?.call(currentEmployeeList, previousEmployeeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(currentEmployeeList, previousEmployeeList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Fetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Fetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Fetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class Fetched implements EmployeeListHomeState {
  const factory Fetched(
          {required final List<EmployeeModelData> currentEmployeeList,
          required final List<EmployeeModelData> previousEmployeeList}) =
      _$FetchedImpl;

  List<EmployeeModelData> get currentEmployeeList;
  List<EmployeeModelData> get previousEmployeeList;
  @JsonKey(ignore: true)
  _$$FetchedImplCopyWith<_$FetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
