// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IssueLabel {
  String get text => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssueLabelCopyWith<IssueLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueLabelCopyWith<$Res> {
  factory $IssueLabelCopyWith(
          IssueLabel value, $Res Function(IssueLabel) then) =
      _$IssueLabelCopyWithImpl<$Res, IssueLabel>;
  @useResult
  $Res call({String text, Color color});
}

/// @nodoc
class _$IssueLabelCopyWithImpl<$Res, $Val extends IssueLabel>
    implements $IssueLabelCopyWith<$Res> {
  _$IssueLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IssueLabelImplCopyWith<$Res>
    implements $IssueLabelCopyWith<$Res> {
  factory _$$IssueLabelImplCopyWith(
          _$IssueLabelImpl value, $Res Function(_$IssueLabelImpl) then) =
      __$$IssueLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, Color color});
}

/// @nodoc
class __$$IssueLabelImplCopyWithImpl<$Res>
    extends _$IssueLabelCopyWithImpl<$Res, _$IssueLabelImpl>
    implements _$$IssueLabelImplCopyWith<$Res> {
  __$$IssueLabelImplCopyWithImpl(
      _$IssueLabelImpl _value, $Res Function(_$IssueLabelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? color = null,
  }) {
    return _then(_$IssueLabelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$IssueLabelImpl implements _IssueLabel {
  const _$IssueLabelImpl({required this.text, required this.color});

  @override
  final String text;
  @override
  final Color color;

  @override
  String toString() {
    return 'IssueLabel(text: $text, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IssueLabelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IssueLabelImplCopyWith<_$IssueLabelImpl> get copyWith =>
      __$$IssueLabelImplCopyWithImpl<_$IssueLabelImpl>(this, _$identity);
}

abstract class _IssueLabel implements IssueLabel {
  const factory _IssueLabel(
      {required final String text,
      required final Color color}) = _$IssueLabelImpl;

  @override
  String get text;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$IssueLabelImplCopyWith<_$IssueLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
