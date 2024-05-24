// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repository_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepositoryData {
  String get repositoryName => throw _privateConstructorUsedError;
  String get programmingLanguage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get stars => throw _privateConstructorUsedError;
  int get forks => throw _privateConstructorUsedError;
  String get ownerName => throw _privateConstructorUsedError;
  String get ownerAvatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepositoryDataCopyWith<RepositoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryDataCopyWith<$Res> {
  factory $RepositoryDataCopyWith(
          RepositoryData value, $Res Function(RepositoryData) then) =
      _$RepositoryDataCopyWithImpl<$Res, RepositoryData>;
  @useResult
  $Res call(
      {String repositoryName,
      String programmingLanguage,
      String description,
      int stars,
      int forks,
      String ownerName,
      String ownerAvatarUrl});
}

/// @nodoc
class _$RepositoryDataCopyWithImpl<$Res, $Val extends RepositoryData>
    implements $RepositoryDataCopyWith<$Res> {
  _$RepositoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = null,
    Object? programmingLanguage = null,
    Object? description = null,
    Object? stars = null,
    Object? forks = null,
    Object? ownerName = null,
    Object? ownerAvatarUrl = null,
  }) {
    return _then(_value.copyWith(
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      programmingLanguage: null == programmingLanguage
          ? _value.programmingLanguage
          : programmingLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAvatarUrl: null == ownerAvatarUrl
          ? _value.ownerAvatarUrl
          : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepositoryDataImplCopyWith<$Res>
    implements $RepositoryDataCopyWith<$Res> {
  factory _$$RepositoryDataImplCopyWith(_$RepositoryDataImpl value,
          $Res Function(_$RepositoryDataImpl) then) =
      __$$RepositoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String repositoryName,
      String programmingLanguage,
      String description,
      int stars,
      int forks,
      String ownerName,
      String ownerAvatarUrl});
}

/// @nodoc
class __$$RepositoryDataImplCopyWithImpl<$Res>
    extends _$RepositoryDataCopyWithImpl<$Res, _$RepositoryDataImpl>
    implements _$$RepositoryDataImplCopyWith<$Res> {
  __$$RepositoryDataImplCopyWithImpl(
      _$RepositoryDataImpl _value, $Res Function(_$RepositoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = null,
    Object? programmingLanguage = null,
    Object? description = null,
    Object? stars = null,
    Object? forks = null,
    Object? ownerName = null,
    Object? ownerAvatarUrl = null,
  }) {
    return _then(_$RepositoryDataImpl(
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      programmingLanguage: null == programmingLanguage
          ? _value.programmingLanguage
          : programmingLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as int,
      forks: null == forks
          ? _value.forks
          : forks // ignore: cast_nullable_to_non_nullable
              as int,
      ownerName: null == ownerName
          ? _value.ownerName
          : ownerName // ignore: cast_nullable_to_non_nullable
              as String,
      ownerAvatarUrl: null == ownerAvatarUrl
          ? _value.ownerAvatarUrl
          : ownerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepositoryDataImpl implements _RepositoryData {
  const _$RepositoryDataImpl(
      {required this.repositoryName,
      required this.programmingLanguage,
      required this.description,
      required this.stars,
      required this.forks,
      required this.ownerName,
      required this.ownerAvatarUrl});

  @override
  final String repositoryName;
  @override
  final String programmingLanguage;
  @override
  final String description;
  @override
  final int stars;
  @override
  final int forks;
  @override
  final String ownerName;
  @override
  final String ownerAvatarUrl;

  @override
  String toString() {
    return 'RepositoryData(repositoryName: $repositoryName, programmingLanguage: $programmingLanguage, description: $description, stars: $stars, forks: $forks, ownerName: $ownerName, ownerAvatarUrl: $ownerAvatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepositoryDataImpl &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.programmingLanguage, programmingLanguage) ||
                other.programmingLanguage == programmingLanguage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.forks, forks) || other.forks == forks) &&
            (identical(other.ownerName, ownerName) ||
                other.ownerName == ownerName) &&
            (identical(other.ownerAvatarUrl, ownerAvatarUrl) ||
                other.ownerAvatarUrl == ownerAvatarUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      repositoryName,
      programmingLanguage,
      description,
      stars,
      forks,
      ownerName,
      ownerAvatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      __$$RepositoryDataImplCopyWithImpl<_$RepositoryDataImpl>(
          this, _$identity);
}

abstract class _RepositoryData implements RepositoryData {
  const factory _RepositoryData(
      {required final String repositoryName,
      required final String programmingLanguage,
      required final String description,
      required final int stars,
      required final int forks,
      required final String ownerName,
      required final String ownerAvatarUrl}) = _$RepositoryDataImpl;

  @override
  String get repositoryName;
  @override
  String get programmingLanguage;
  @override
  String get description;
  @override
  int get stars;
  @override
  int get forks;
  @override
  String get ownerName;
  @override
  String get ownerAvatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$RepositoryDataImplCopyWith<_$RepositoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
