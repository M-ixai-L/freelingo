// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fl_dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlDictionary _$FlDictionaryFromJson(Map<String, dynamic> json) {
  return FlDictionary$.fromJson(json);
}

/// @nodoc
mixin _$FlDictionary {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @WordConverter()
  List<FlWord> get words => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastUpdatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlDictionaryCopyWith<FlDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlDictionaryCopyWith<$Res> {
  factory $FlDictionaryCopyWith(
          FlDictionary value, $Res Function(FlDictionary) then) =
      _$FlDictionaryCopyWithImpl<$Res, FlDictionary>;
  @useResult
  $Res call(
      {String name,
      String id,
      @WordConverter() List<FlWord> words,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastUpdatedAt});
}

/// @nodoc
class _$FlDictionaryCopyWithImpl<$Res, $Val extends FlDictionary>
    implements $FlDictionaryCopyWith<$Res> {
  _$FlDictionaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? words = null,
    Object? createdAt = null,
    Object? lastUpdatedAt = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as List<FlWord>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedAt: null == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlDictionary$ImplCopyWith<$Res>
    implements $FlDictionaryCopyWith<$Res> {
  factory _$$FlDictionary$ImplCopyWith(
          _$FlDictionary$Impl value, $Res Function(_$FlDictionary$Impl) then) =
      __$$FlDictionary$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      @WordConverter() List<FlWord> words,
      @TimestampConverter() DateTime createdAt,
      @TimestampConverter() DateTime lastUpdatedAt});
}

/// @nodoc
class __$$FlDictionary$ImplCopyWithImpl<$Res>
    extends _$FlDictionaryCopyWithImpl<$Res, _$FlDictionary$Impl>
    implements _$$FlDictionary$ImplCopyWith<$Res> {
  __$$FlDictionary$ImplCopyWithImpl(
      _$FlDictionary$Impl _value, $Res Function(_$FlDictionary$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? words = null,
    Object? createdAt = null,
    Object? lastUpdatedAt = null,
  }) {
    return _then(_$FlDictionary$Impl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      words: null == words
          ? _value._words
          : words // ignore: cast_nullable_to_non_nullable
              as List<FlWord>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastUpdatedAt: null == lastUpdatedAt
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlDictionary$Impl implements FlDictionary$ {
  const _$FlDictionary$Impl(
      {required this.name,
      required this.id,
      @WordConverter() required final List<FlWord> words,
      @TimestampConverter() required this.createdAt,
      @TimestampConverter() required this.lastUpdatedAt})
      : _words = words;

  factory _$FlDictionary$Impl.fromJson(Map<String, dynamic> json) =>
      _$$FlDictionary$ImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  final List<FlWord> _words;
  @override
  @WordConverter()
  List<FlWord> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  @TimestampConverter()
  final DateTime lastUpdatedAt;

  @override
  String toString() {
    return 'FlDictionary(name: $name, id: $id, words: $words, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlDictionary$Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id,
      const DeepCollectionEquality().hash(_words), createdAt, lastUpdatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlDictionary$ImplCopyWith<_$FlDictionary$Impl> get copyWith =>
      __$$FlDictionary$ImplCopyWithImpl<_$FlDictionary$Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlDictionary$ImplToJson(
      this,
    );
  }
}

abstract class FlDictionary$ implements FlDictionary {
  const factory FlDictionary$(
          {required final String name,
          required final String id,
          @WordConverter() required final List<FlWord> words,
          @TimestampConverter() required final DateTime createdAt,
          @TimestampConverter() required final DateTime lastUpdatedAt}) =
      _$FlDictionary$Impl;

  factory FlDictionary$.fromJson(Map<String, dynamic> json) =
      _$FlDictionary$Impl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @WordConverter()
  List<FlWord> get words;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  @TimestampConverter()
  DateTime get lastUpdatedAt;
  @override
  @JsonKey(ignore: true)
  _$$FlDictionary$ImplCopyWith<_$FlDictionary$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
