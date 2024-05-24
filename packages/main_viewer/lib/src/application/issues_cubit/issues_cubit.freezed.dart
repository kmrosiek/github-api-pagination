// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issues_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IssuesState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<IssueData> get issues => throw _privateConstructorUsedError;
  Option<Failure> get maybeFailure => throw _privateConstructorUsedError;
  int get paginationPage => throw _privateConstructorUsedError;
  bool get hasMoreIssuesToFetch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssuesStateCopyWith<IssuesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesStateCopyWith<$Res> {
  factory $IssuesStateCopyWith(
          IssuesState value, $Res Function(IssuesState) then) =
      _$IssuesStateCopyWithImpl<$Res, IssuesState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<IssueData> issues,
      Option<Failure> maybeFailure,
      int paginationPage,
      bool hasMoreIssuesToFetch});
}

/// @nodoc
class _$IssuesStateCopyWithImpl<$Res, $Val extends IssuesState>
    implements $IssuesStateCopyWith<$Res> {
  _$IssuesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? issues = null,
    Object? maybeFailure = null,
    Object? paginationPage = null,
    Object? hasMoreIssuesToFetch = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueData>,
      maybeFailure: null == maybeFailure
          ? _value.maybeFailure
          : maybeFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      paginationPage: null == paginationPage
          ? _value.paginationPage
          : paginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreIssuesToFetch: null == hasMoreIssuesToFetch
          ? _value.hasMoreIssuesToFetch
          : hasMoreIssuesToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssuesStateImplCopyWith<$Res>
    implements $IssuesStateCopyWith<$Res> {
  factory _$$IssuesStateImplCopyWith(
          _$IssuesStateImpl value, $Res Function(_$IssuesStateImpl) then) =
      __$$IssuesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<IssueData> issues,
      Option<Failure> maybeFailure,
      int paginationPage,
      bool hasMoreIssuesToFetch});
}

/// @nodoc
class __$$IssuesStateImplCopyWithImpl<$Res>
    extends _$IssuesStateCopyWithImpl<$Res, _$IssuesStateImpl>
    implements _$$IssuesStateImplCopyWith<$Res> {
  __$$IssuesStateImplCopyWithImpl(
      _$IssuesStateImpl _value, $Res Function(_$IssuesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? issues = null,
    Object? maybeFailure = null,
    Object? paginationPage = null,
    Object? hasMoreIssuesToFetch = null,
  }) {
    return _then(_$IssuesStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<IssueData>,
      maybeFailure: null == maybeFailure
          ? _value.maybeFailure
          : maybeFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      paginationPage: null == paginationPage
          ? _value.paginationPage
          : paginationPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreIssuesToFetch: null == hasMoreIssuesToFetch
          ? _value.hasMoreIssuesToFetch
          : hasMoreIssuesToFetch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IssuesStateImpl extends _IssuesState {
  const _$IssuesStateImpl(
      {required this.isLoading,
      required final List<IssueData> issues,
      required this.maybeFailure,
      required this.paginationPage,
      required this.hasMoreIssuesToFetch})
      : _issues = issues,
        super._();

  @override
  final bool isLoading;
  final List<IssueData> _issues;
  @override
  List<IssueData> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  final Option<Failure> maybeFailure;
  @override
  final int paginationPage;
  @override
  final bool hasMoreIssuesToFetch;

  @override
  String toString() {
    return 'IssuesState(isLoading: $isLoading, issues: $issues, maybeFailure: $maybeFailure, paginationPage: $paginationPage, hasMoreIssuesToFetch: $hasMoreIssuesToFetch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssuesStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.maybeFailure, maybeFailure) ||
                other.maybeFailure == maybeFailure) &&
            (identical(other.paginationPage, paginationPage) ||
                other.paginationPage == paginationPage) &&
            (identical(other.hasMoreIssuesToFetch, hasMoreIssuesToFetch) ||
                other.hasMoreIssuesToFetch == hasMoreIssuesToFetch));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_issues),
      maybeFailure,
      paginationPage,
      hasMoreIssuesToFetch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssuesStateImplCopyWith<_$IssuesStateImpl> get copyWith =>
      __$$IssuesStateImplCopyWithImpl<_$IssuesStateImpl>(this, _$identity);
}

abstract class _IssuesState extends IssuesState {
  const factory _IssuesState(
      {required final bool isLoading,
      required final List<IssueData> issues,
      required final Option<Failure> maybeFailure,
      required final int paginationPage,
      required final bool hasMoreIssuesToFetch}) = _$IssuesStateImpl;
  const _IssuesState._() : super._();

  @override
  bool get isLoading;
  @override
  List<IssueData> get issues;
  @override
  Option<Failure> get maybeFailure;
  @override
  int get paginationPage;
  @override
  bool get hasMoreIssuesToFetch;
  @override
  @JsonKey(ignore: true)
  _$$IssuesStateImplCopyWith<_$IssuesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
