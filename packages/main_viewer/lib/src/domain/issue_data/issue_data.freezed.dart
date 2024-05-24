// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IssueData {
  String get title => throw _privateConstructorUsedError;
  String get subtitle => throw _privateConstructorUsedError;
  String get userAvatarUrl => throw _privateConstructorUsedError;
  String get userLogin => throw _privateConstructorUsedError;
  List<IssueLabel> get labels => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueDataCopyWith<IssueData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueDataCopyWith<$Res> {
  factory $IssueDataCopyWith(IssueData value, $Res Function(IssueData) then) =
      _$IssueDataCopyWithImpl<$Res, IssueData>;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String userAvatarUrl,
      String userLogin,
      List<IssueLabel> labels,
      DateTime createdAt});
}

/// @nodoc
class _$IssueDataCopyWithImpl<$Res, $Val extends IssueData>
    implements $IssueDataCopyWith<$Res> {
  _$IssueDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? userAvatarUrl = null,
    Object? userLogin = null,
    Object? labels = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarUrl: null == userAvatarUrl
          ? _value.userAvatarUrl
          : userAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<IssueLabel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssueDataImplCopyWith<$Res>
    implements $IssueDataCopyWith<$Res> {
  factory _$$IssueDataImplCopyWith(
          _$IssueDataImpl value, $Res Function(_$IssueDataImpl) then) =
      __$$IssueDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String userAvatarUrl,
      String userLogin,
      List<IssueLabel> labels,
      DateTime createdAt});
}

/// @nodoc
class __$$IssueDataImplCopyWithImpl<$Res>
    extends _$IssueDataCopyWithImpl<$Res, _$IssueDataImpl>
    implements _$$IssueDataImplCopyWith<$Res> {
  __$$IssueDataImplCopyWithImpl(
      _$IssueDataImpl _value, $Res Function(_$IssueDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? userAvatarUrl = null,
    Object? userLogin = null,
    Object? labels = null,
    Object? createdAt = null,
  }) {
    return _then(_$IssueDataImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      userAvatarUrl: null == userAvatarUrl
          ? _value.userAvatarUrl
          : userAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<IssueLabel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$IssueDataImpl implements _IssueData {
  const _$IssueDataImpl(
      {required this.title,
      required this.subtitle,
      required this.userAvatarUrl,
      required this.userLogin,
      required final List<IssueLabel> labels,
      required this.createdAt})
      : _labels = labels;

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String userAvatarUrl;
  @override
  final String userLogin;
  final List<IssueLabel> _labels;
  @override
  List<IssueLabel> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'IssueData(title: $title, subtitle: $subtitle, userAvatarUrl: $userAvatarUrl, userLogin: $userLogin, labels: $labels, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueDataImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.userAvatarUrl, userAvatarUrl) ||
                other.userAvatarUrl == userAvatarUrl) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, userAvatarUrl,
      userLogin, const DeepCollectionEquality().hash(_labels), createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueDataImplCopyWith<_$IssueDataImpl> get copyWith =>
      __$$IssueDataImplCopyWithImpl<_$IssueDataImpl>(this, _$identity);
}

abstract class _IssueData implements IssueData {
  const factory _IssueData(
      {required final String title,
      required final String subtitle,
      required final String userAvatarUrl,
      required final String userLogin,
      required final List<IssueLabel> labels,
      required final DateTime createdAt}) = _$IssueDataImpl;

  @override
  String get title;
  @override
  String get subtitle;
  @override
  String get userAvatarUrl;
  @override
  String get userLogin;
  @override
  List<IssueLabel> get labels;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$IssueDataImplCopyWith<_$IssueDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
