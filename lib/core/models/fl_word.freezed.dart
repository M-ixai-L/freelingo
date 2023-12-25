// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fl_word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlWord _$FlWordFromJson(Map<String, dynamic> json) {
  return FlWord$.fromJson(json);
}

/// @nodoc
mixin _$FlWord {
  List<String> get translations => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get repetitions => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isLearned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlWordCopyWith<FlWord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlWordCopyWith<$Res> {
  factory $FlWordCopyWith(FlWord value, $Res Function(FlWord) then) =
      _$FlWordCopyWithImpl<$Res, FlWord>;
  @useResult
  $Res call(
      {List<String> translations,
      String description,
      String title,
      String id,
      int repetitions,
      @TimestampConverter() DateTime createdAt,
      bool isLearned});
}

/// @nodoc
class _$FlWordCopyWithImpl<$Res, $Val extends FlWord>
    implements $FlWordCopyWith<$Res> {
  _$FlWordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
    Object? description = null,
    Object? title = null,
    Object? id = null,
    Object? repetitions = null,
    Object? createdAt = null,
    Object? isLearned = null,
  }) {
    return _then(_value.copyWith(
      translations: null == translations
          ? _value.translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLearned: null == isLearned
          ? _value.isLearned
          : isLearned // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlWord$ImplCopyWith<$Res> implements $FlWordCopyWith<$Res> {
  factory _$$FlWord$ImplCopyWith(
          _$FlWord$Impl value, $Res Function(_$FlWord$Impl) then) =
      __$$FlWord$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> translations,
      String description,
      String title,
      String id,
      int repetitions,
      @TimestampConverter() DateTime createdAt,
      bool isLearned});
}

/// @nodoc
class __$$FlWord$ImplCopyWithImpl<$Res>
    extends _$FlWordCopyWithImpl<$Res, _$FlWord$Impl>
    implements _$$FlWord$ImplCopyWith<$Res> {
  __$$FlWord$ImplCopyWithImpl(
      _$FlWord$Impl _value, $Res Function(_$FlWord$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translations = null,
    Object? description = null,
    Object? title = null,
    Object? id = null,
    Object? repetitions = null,
    Object? createdAt = null,
    Object? isLearned = null,
  }) {
    return _then(_$FlWord$Impl(
      translations: null == translations
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      repetitions: null == repetitions
          ? _value.repetitions
          : repetitions // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isLearned: null == isLearned
          ? _value.isLearned
          : isLearned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlWord$Impl implements FlWord$ {
  const _$FlWord$Impl(
      {required final List<String> translations,
      required this.description,
      required this.title,
      required this.id,
      this.repetitions = 0,
      @TimestampConverter() required this.createdAt,
      this.isLearned = false})
      : _translations = translations;

  factory _$FlWord$Impl.fromJson(Map<String, dynamic> json) =>
      _$$FlWord$ImplFromJson(json);

  final List<String> _translations;
  @override
  List<String> get translations {
    if (_translations is EqualUnmodifiableListView) return _translations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_translations);
  }

  @override
  final String description;
  @override
  final String title;
  @override
  final String id;
  @override
  @JsonKey()
  final int repetitions;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isLearned;

  @override
  String toString() {
    return 'FlWord(translations: $translations, description: $description, title: $title, id: $id, repetitions: $repetitions, createdAt: $createdAt, isLearned: $isLearned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlWord$Impl &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.repetitions, repetitions) ||
                other.repetitions == repetitions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isLearned, isLearned) ||
                other.isLearned == isLearned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_translations),
      description,
      title,
      id,
      repetitions,
      createdAt,
      isLearned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlWord$ImplCopyWith<_$FlWord$Impl> get copyWith =>
      __$$FlWord$ImplCopyWithImpl<_$FlWord$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlWord$ImplToJson(
      this,
    );
  }
}

abstract class FlWord$ implements FlWord {
  const factory FlWord$(
      {required final List<String> translations,
      required final String description,
      required final String title,
      required final String id,
      final int repetitions,
      @TimestampConverter() required final DateTime createdAt,
      final bool isLearned}) = _$FlWord$Impl;

  factory FlWord$.fromJson(Map<String, dynamic> json) = _$FlWord$Impl.fromJson;

  @override
  List<String> get translations;
  @override
  String get description;
  @override
  String get title;
  @override
  String get id;
  @override
  int get repetitions;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  bool get isLearned;
  @override
  @JsonKey(ignore: true)
  _$$FlWord$ImplCopyWith<_$FlWord$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
