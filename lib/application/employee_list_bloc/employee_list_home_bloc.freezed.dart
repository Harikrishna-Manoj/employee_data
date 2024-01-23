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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchEmployees value) fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
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

class _$FetchEmployeesImpl implements _FetchEmployees {
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
  }) {
    return fetchEmployees();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEmployees,
  }) {
    return fetchEmployees?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEmployees,
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
    required TResult Function(_FetchEmployees value) fetchEmployees,
  }) {
    return fetchEmployees(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchEmployees value)? fetchEmployees,
  }) {
    return fetchEmployees?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchEmployees value)? fetchEmployees,
    required TResult orElse(),
  }) {
    if (fetchEmployees != null) {
      return fetchEmployees(this);
    }
    return orElse();
  }
}

abstract class _FetchEmployees implements EmployeeListHomeEvent {
  const factory _FetchEmployees() = _$FetchEmployeesImpl;
}

/// @nodoc
mixin _$EmployeeListHomeState {
  List<EmployeeModelData> get currentEmployeeList =>
      throw _privateConstructorUsedError;
  List<EmployeeModelData> get previousEmployeeList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        initial,
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

  @JsonKey(ignore: true)
  $EmployeeListHomeStateCopyWith<EmployeeListHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListHomeStateCopyWith<$Res> {
  factory $EmployeeListHomeStateCopyWith(EmployeeListHomeState value,
          $Res Function(EmployeeListHomeState) then) =
      _$EmployeeListHomeStateCopyWithImpl<$Res, EmployeeListHomeState>;
  @useResult
  $Res call(
      {List<EmployeeModelData> currentEmployeeList,
      List<EmployeeModelData> previousEmployeeList});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
  }) {
    return _then(_value.copyWith(
      currentEmployeeList: null == currentEmployeeList
          ? _value.currentEmployeeList
          : currentEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModelData>,
      previousEmployeeList: null == previousEmployeeList
          ? _value.previousEmployeeList
          : previousEmployeeList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModelData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $EmployeeListHomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EmployeeModelData> currentEmployeeList,
      List<EmployeeModelData> previousEmployeeList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$EmployeeListHomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentEmployeeList = null,
    Object? previousEmployeeList = null,
  }) {
    return _then(_$InitialImpl(
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
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
    return 'EmployeeListHomeState.initial(currentEmployeeList: $currentEmployeeList, previousEmployeeList: $previousEmployeeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
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
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)
        initial,
  }) {
    return initial(currentEmployeeList, previousEmployeeList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        initial,
  }) {
    return initial?.call(currentEmployeeList, previousEmployeeList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<EmployeeModelData> currentEmployeeList,
            List<EmployeeModelData> previousEmployeeList)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentEmployeeList, previousEmployeeList);
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

abstract class _Initial implements EmployeeListHomeState {
  const factory _Initial(
          {required final List<EmployeeModelData> currentEmployeeList,
          required final List<EmployeeModelData> previousEmployeeList}) =
      _$InitialImpl;

  @override
  List<EmployeeModelData> get currentEmployeeList;
  @override
  List<EmployeeModelData> get previousEmployeeList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
