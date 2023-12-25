// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fl_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlUser _$FlUserFromJson(Map<String, dynamic> json) {
  return FlUser$.fromJson(json);
}

/// @nodoc
mixin _$FlUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastLoginAt => throw _privateConstructorUsedError;
  List<String> get dictionaries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlUserCopyWith<FlUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlUserCopyWith<$Res> {
  factory $FlUserCopyWith(FlUser value, $Res Function(FlUser) then) =
      _$FlUserCopyWithImpl<$Res, FlUser>;
  @useResult
  $Res call(
      {String id,
      String email,
      String? image,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastLoginAt,
      List<String> dictionaries});
}

/// @nodoc
class _$FlUserCopyWithImpl<$Res, $Val extends FlUser>
    implements $FlUserCopyWith<$Res> {
  _$FlUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? dictionaries = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dictionaries: null == dictionaries
          ? _value.dictionaries
          : dictionaries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlUser$ImplCopyWith<$Res> implements $FlUserCopyWith<$Res> {
  factory _$$FlUser$ImplCopyWith(
          _$FlUser$Impl value, $Res Function(_$FlUser$Impl) then) =
      __$$FlUser$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String? image,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastLoginAt,
      List<String> dictionaries});
}

/// @nodoc
class __$$FlUser$ImplCopyWithImpl<$Res>
    extends _$FlUserCopyWithImpl<$Res, _$FlUser$Impl>
    implements _$$FlUser$ImplCopyWith<$Res> {
  __$$FlUser$ImplCopyWithImpl(
      _$FlUser$Impl _value, $Res Function(_$FlUser$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? lastLoginAt = null,
    Object? dictionaries = null,
  }) {
    return _then(_$FlUser$Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastLoginAt: null == lastLoginAt
          ? _value.lastLoginAt
          : lastLoginAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dictionaries: null == dictionaries
          ? _value._dictionaries
          : dictionaries // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlUser$Impl implements FlUser$ {
  const _$FlUser$Impl(
      {required this.id,
      required this.email,
      required this.image,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.lastLoginAt,
      final List<String> dictionaries = const []})
      : _dictionaries = dictionaries;

  factory _$FlUser$Impl.fromJson(Map<String, dynamic> json) =>
      _$$FlUser$ImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String? image;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime lastLoginAt;
  final List<String> _dictionaries;
  @override
  @JsonKey()
  List<String> get dictionaries {
    if (_dictionaries is EqualUnmodifiableListView) return _dictionaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dictionaries);
  }

  @override
  String toString() {
    return 'FlUser(id: $id, email: $email, image: $image, createdAt: $createdAt, lastLoginAt: $lastLoginAt, dictionaries: $dictionaries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlUser$Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt) &&
            const DeepCollectionEquality()
                .equals(other._dictionaries, _dictionaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, image, createdAt,
      lastLoginAt, const DeepCollectionEquality().hash(_dictionaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlUser$ImplCopyWith<_$FlUser$Impl> get copyWith =>
      __$$FlUser$ImplCopyWithImpl<_$FlUser$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlUser$ImplToJson(
      this,
    );
  }
}

abstract class FlUser$ implements FlUser {
  const factory FlUser$(
      {required final String id,
      required final String email,
      required final String? image,
      @TimestampConverter() required final DateTime createdAt,
      @TimestampConverter() required final DateTime lastLoginAt,
      final List<String> dictionaries}) = _$FlUser$Impl;

  factory FlUser$.fromJson(Map<String, dynamic> json) = _$FlUser$Impl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String? get image;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get lastLoginAt;
  @override
  List<String> get dictionaries;
  @override
  @JsonKey(ignore: true)
  _$$FlUser$ImplCopyWith<_$FlUser$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
