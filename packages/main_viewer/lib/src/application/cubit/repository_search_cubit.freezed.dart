// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_search_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepositorySearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<Failure, List<RepositoryData>>> get failureDataOrNothing =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositorySearchStateCopyWith<RepositorySearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositorySearchStateCopyWith<$Res> {
  factory $RepositorySearchStateCopyWith(RepositorySearchState value,
          $Res Function(RepositorySearchState) then) =
      _$RepositorySearchStateCopyWithImpl<$Res, RepositorySearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<Failure, List<RepositoryData>>> failureDataOrNothing});
}

/// @nodoc
class _$RepositorySearchStateCopyWithImpl<$Res,
        $Val extends RepositorySearchState>
    implements $RepositorySearchStateCopyWith<$Res> {
  _$RepositorySearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureDataOrNothing = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureDataOrNothing: null == failureDataOrNothing
          ? _value.failureDataOrNothing
          : failureDataOrNothing // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<RepositoryData>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositorySearchStateImplCopyWith<$Res>
    implements $RepositorySearchStateCopyWith<$Res> {
  factory _$$RepositorySearchStateImplCopyWith(
          _$RepositorySearchStateImpl value,
          $Res Function(_$RepositorySearchStateImpl) then) =
      __$$RepositorySearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<Failure, List<RepositoryData>>> failureDataOrNothing});
}

/// @nodoc
class __$$RepositorySearchStateImplCopyWithImpl<$Res>
    extends _$RepositorySearchStateCopyWithImpl<$Res,
        _$RepositorySearchStateImpl>
    implements _$$RepositorySearchStateImplCopyWith<$Res> {
  __$$RepositorySearchStateImplCopyWithImpl(_$RepositorySearchStateImpl _value,
      $Res Function(_$RepositorySearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureDataOrNothing = null,
  }) {
    return _then(_$RepositorySearchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureDataOrNothing: null == failureDataOrNothing
          ? _value.failureDataOrNothing
          : failureDataOrNothing // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, List<RepositoryData>>>,
    ));
  }
}

/// @nodoc

class _$RepositorySearchStateImpl implements _RepositorySearchState {
  const _$RepositorySearchStateImpl(
      {required this.isLoading, required this.failureDataOrNothing});

  @override
  final bool isLoading;
  @override
  final Option<Either<Failure, List<RepositoryData>>> failureDataOrNothing;

  @override
  String toString() {
    return 'RepositorySearchState(isLoading: $isLoading, failureDataOrNothing: $failureDataOrNothing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositorySearchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureDataOrNothing, failureDataOrNothing) ||
                other.failureDataOrNothing == failureDataOrNothing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failureDataOrNothing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositorySearchStateImplCopyWith<_$RepositorySearchStateImpl>
      get copyWith => __$$RepositorySearchStateImplCopyWithImpl<
          _$RepositorySearchStateImpl>(this, _$identity);
}

abstract class _RepositorySearchState implements RepositorySearchState {
  const factory _RepositorySearchState(
      {required final bool isLoading,
      required final Option<Either<Failure, List<RepositoryData>>>
          failureDataOrNothing}) = _$RepositorySearchStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<Failure, List<RepositoryData>>> get failureDataOrNothing;
  @override
  @JsonKey(ignore: true)
  _$$RepositorySearchStateImplCopyWith<_$RepositorySearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
