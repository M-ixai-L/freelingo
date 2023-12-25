// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DictionaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addWord,
    required TResult Function(String dictionaryId) listenDictionary,
    required TResult Function(FlDictionary dictionary) emitDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addWord,
    TResult? Function(String dictionaryId)? listenDictionary,
    TResult? Function(FlDictionary dictionary)? emitDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addWord,
    TResult Function(String dictionaryId)? listenDictionary,
    TResult Function(FlDictionary dictionary)? emitDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ListenDictionary value) listenDictionary,
    required TResult Function(_EmitDictionary value) emitDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ListenDictionary value)? listenDictionary,
    TResult? Function(_EmitDictionary value)? emitDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ListenDictionary value)? listenDictionary,
    TResult Function(_EmitDictionary value)? emitDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryEventCopyWith<$Res> {
  factory $DictionaryEventCopyWith(
          DictionaryEvent value, $Res Function(DictionaryEvent) then) =
      _$DictionaryEventCopyWithImpl<$Res, DictionaryEvent>;
}

/// @nodoc
class _$DictionaryEventCopyWithImpl<$Res, $Val extends DictionaryEvent>
    implements $DictionaryEventCopyWith<$Res> {
  _$DictionaryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddWordImplCopyWith<$Res> {
  factory _$$AddWordImplCopyWith(
          _$AddWordImpl value, $Res Function(_$AddWordImpl) then) =
      __$$AddWordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlDictionary dictionary});

  $FlDictionaryCopyWith<$Res> get dictionary;
}

/// @nodoc
class __$$AddWordImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$AddWordImpl>
    implements _$$AddWordImplCopyWith<$Res> {
  __$$AddWordImplCopyWithImpl(
      _$AddWordImpl _value, $Res Function(_$AddWordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = null,
  }) {
    return _then(_$AddWordImpl(
      dictionary: null == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlDictionaryCopyWith<$Res> get dictionary {
    return $FlDictionaryCopyWith<$Res>(_value.dictionary, (value) {
      return _then(_value.copyWith(dictionary: value));
    });
  }
}

/// @nodoc

class _$AddWordImpl implements _AddWord {
  const _$AddWordImpl({required this.dictionary});

  @override
  final FlDictionary dictionary;

  @override
  String toString() {
    return 'DictionaryEvent.addWord(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWordImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWordImplCopyWith<_$AddWordImpl> get copyWith =>
      __$$AddWordImplCopyWithImpl<_$AddWordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addWord,
    required TResult Function(String dictionaryId) listenDictionary,
    required TResult Function(FlDictionary dictionary) emitDictionary,
  }) {
    return addWord(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addWord,
    TResult? Function(String dictionaryId)? listenDictionary,
    TResult? Function(FlDictionary dictionary)? emitDictionary,
  }) {
    return addWord?.call(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addWord,
    TResult Function(String dictionaryId)? listenDictionary,
    TResult Function(FlDictionary dictionary)? emitDictionary,
    required TResult orElse(),
  }) {
    if (addWord != null) {
      return addWord(dictionary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ListenDictionary value) listenDictionary,
    required TResult Function(_EmitDictionary value) emitDictionary,
  }) {
    return addWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ListenDictionary value)? listenDictionary,
    TResult? Function(_EmitDictionary value)? emitDictionary,
  }) {
    return addWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ListenDictionary value)? listenDictionary,
    TResult Function(_EmitDictionary value)? emitDictionary,
    required TResult orElse(),
  }) {
    if (addWord != null) {
      return addWord(this);
    }
    return orElse();
  }
}

abstract class _AddWord implements DictionaryEvent {
  const factory _AddWord({required final FlDictionary dictionary}) =
      _$AddWordImpl;

  FlDictionary get dictionary;
  @JsonKey(ignore: true)
  _$$AddWordImplCopyWith<_$AddWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListenDictionaryImplCopyWith<$Res> {
  factory _$$ListenDictionaryImplCopyWith(_$ListenDictionaryImpl value,
          $Res Function(_$ListenDictionaryImpl) then) =
      __$$ListenDictionaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dictionaryId});
}

/// @nodoc
class __$$ListenDictionaryImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$ListenDictionaryImpl>
    implements _$$ListenDictionaryImplCopyWith<$Res> {
  __$$ListenDictionaryImplCopyWithImpl(_$ListenDictionaryImpl _value,
      $Res Function(_$ListenDictionaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionaryId = null,
  }) {
    return _then(_$ListenDictionaryImpl(
      dictionaryId: null == dictionaryId
          ? _value.dictionaryId
          : dictionaryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenDictionaryImpl implements _ListenDictionary {
  const _$ListenDictionaryImpl({required this.dictionaryId});

  @override
  final String dictionaryId;

  @override
  String toString() {
    return 'DictionaryEvent.listenDictionary(dictionaryId: $dictionaryId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenDictionaryImpl &&
            (identical(other.dictionaryId, dictionaryId) ||
                other.dictionaryId == dictionaryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionaryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenDictionaryImplCopyWith<_$ListenDictionaryImpl> get copyWith =>
      __$$ListenDictionaryImplCopyWithImpl<_$ListenDictionaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addWord,
    required TResult Function(String dictionaryId) listenDictionary,
    required TResult Function(FlDictionary dictionary) emitDictionary,
  }) {
    return listenDictionary(dictionaryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addWord,
    TResult? Function(String dictionaryId)? listenDictionary,
    TResult? Function(FlDictionary dictionary)? emitDictionary,
  }) {
    return listenDictionary?.call(dictionaryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addWord,
    TResult Function(String dictionaryId)? listenDictionary,
    TResult Function(FlDictionary dictionary)? emitDictionary,
    required TResult orElse(),
  }) {
    if (listenDictionary != null) {
      return listenDictionary(dictionaryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ListenDictionary value) listenDictionary,
    required TResult Function(_EmitDictionary value) emitDictionary,
  }) {
    return listenDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ListenDictionary value)? listenDictionary,
    TResult? Function(_EmitDictionary value)? emitDictionary,
  }) {
    return listenDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ListenDictionary value)? listenDictionary,
    TResult Function(_EmitDictionary value)? emitDictionary,
    required TResult orElse(),
  }) {
    if (listenDictionary != null) {
      return listenDictionary(this);
    }
    return orElse();
  }
}

abstract class _ListenDictionary implements DictionaryEvent {
  const factory _ListenDictionary({required final String dictionaryId}) =
      _$ListenDictionaryImpl;

  String get dictionaryId;
  @JsonKey(ignore: true)
  _$$ListenDictionaryImplCopyWith<_$ListenDictionaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmitDictionaryImplCopyWith<$Res> {
  factory _$$EmitDictionaryImplCopyWith(_$EmitDictionaryImpl value,
          $Res Function(_$EmitDictionaryImpl) then) =
      __$$EmitDictionaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlDictionary dictionary});

  $FlDictionaryCopyWith<$Res> get dictionary;
}

/// @nodoc
class __$$EmitDictionaryImplCopyWithImpl<$Res>
    extends _$DictionaryEventCopyWithImpl<$Res, _$EmitDictionaryImpl>
    implements _$$EmitDictionaryImplCopyWith<$Res> {
  __$$EmitDictionaryImplCopyWithImpl(
      _$EmitDictionaryImpl _value, $Res Function(_$EmitDictionaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = null,
  }) {
    return _then(_$EmitDictionaryImpl(
      dictionary: null == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlDictionaryCopyWith<$Res> get dictionary {
    return $FlDictionaryCopyWith<$Res>(_value.dictionary, (value) {
      return _then(_value.copyWith(dictionary: value));
    });
  }
}

/// @nodoc

class _$EmitDictionaryImpl implements _EmitDictionary {
  const _$EmitDictionaryImpl({required this.dictionary});

  @override
  final FlDictionary dictionary;

  @override
  String toString() {
    return 'DictionaryEvent.emitDictionary(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitDictionaryImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitDictionaryImplCopyWith<_$EmitDictionaryImpl> get copyWith =>
      __$$EmitDictionaryImplCopyWithImpl<_$EmitDictionaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addWord,
    required TResult Function(String dictionaryId) listenDictionary,
    required TResult Function(FlDictionary dictionary) emitDictionary,
  }) {
    return emitDictionary(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addWord,
    TResult? Function(String dictionaryId)? listenDictionary,
    TResult? Function(FlDictionary dictionary)? emitDictionary,
  }) {
    return emitDictionary?.call(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addWord,
    TResult Function(String dictionaryId)? listenDictionary,
    TResult Function(FlDictionary dictionary)? emitDictionary,
    required TResult orElse(),
  }) {
    if (emitDictionary != null) {
      return emitDictionary(dictionary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddWord value) addWord,
    required TResult Function(_ListenDictionary value) listenDictionary,
    required TResult Function(_EmitDictionary value) emitDictionary,
  }) {
    return emitDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddWord value)? addWord,
    TResult? Function(_ListenDictionary value)? listenDictionary,
    TResult? Function(_EmitDictionary value)? emitDictionary,
  }) {
    return emitDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddWord value)? addWord,
    TResult Function(_ListenDictionary value)? listenDictionary,
    TResult Function(_EmitDictionary value)? emitDictionary,
    required TResult orElse(),
  }) {
    if (emitDictionary != null) {
      return emitDictionary(this);
    }
    return orElse();
  }
}

abstract class _EmitDictionary implements DictionaryEvent {
  const factory _EmitDictionary({required final FlDictionary dictionary}) =
      _$EmitDictionaryImpl;

  FlDictionary get dictionary;
  @JsonKey(ignore: true)
  _$$EmitDictionaryImplCopyWith<_$EmitDictionaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DictionaryState {
  FlDictionary? get dictionary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionaryStateCopyWith<DictionaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryStateCopyWith<$Res> {
  factory $DictionaryStateCopyWith(
          DictionaryState value, $Res Function(DictionaryState) then) =
      _$DictionaryStateCopyWithImpl<$Res, DictionaryState>;
  @useResult
  $Res call({FlDictionary? dictionary});

  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class _$DictionaryStateCopyWithImpl<$Res, $Val extends DictionaryState>
    implements $DictionaryStateCopyWith<$Res> {
  _$DictionaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = freezed,
  }) {
    return _then(_value.copyWith(
      dictionary: freezed == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlDictionaryCopyWith<$Res>? get dictionary {
    if (_value.dictionary == null) {
      return null;
    }

    return $FlDictionaryCopyWith<$Res>(_value.dictionary!, (value) {
      return _then(_value.copyWith(dictionary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DictionaryStateImplCopyWith<$Res>
    implements $DictionaryStateCopyWith<$Res> {
  factory _$$DictionaryStateImplCopyWith(_$DictionaryStateImpl value,
          $Res Function(_$DictionaryStateImpl) then) =
      __$$DictionaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlDictionary? dictionary});

  @override
  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class __$$DictionaryStateImplCopyWithImpl<$Res>
    extends _$DictionaryStateCopyWithImpl<$Res, _$DictionaryStateImpl>
    implements _$$DictionaryStateImplCopyWith<$Res> {
  __$$DictionaryStateImplCopyWithImpl(
      _$DictionaryStateImpl _value, $Res Function(_$DictionaryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = freezed,
  }) {
    return _then(_$DictionaryStateImpl(
      dictionary: freezed == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ));
  }
}

/// @nodoc

class _$DictionaryStateImpl implements _DictionaryState {
  const _$DictionaryStateImpl({this.dictionary});

  @override
  final FlDictionary? dictionary;

  @override
  String toString() {
    return 'DictionaryState(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionaryStateImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      __$$DictionaryStateImplCopyWithImpl<_$DictionaryStateImpl>(
          this, _$identity);
}

abstract class _DictionaryState implements DictionaryState {
  const factory _DictionaryState({final FlDictionary? dictionary}) =
      _$DictionaryStateImpl;

  @override
  FlDictionary? get dictionary;
  @override
  @JsonKey(ignore: true)
  _$$DictionaryStateImplCopyWith<_$DictionaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
