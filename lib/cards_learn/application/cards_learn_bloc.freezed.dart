// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_learn_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardsLearnEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenDictionary value) listenDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenDictionary value)? listenDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenDictionary value)? listenDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsLearnEventCopyWith<$Res> {
  factory $CardsLearnEventCopyWith(
          CardsLearnEvent value, $Res Function(CardsLearnEvent) then) =
      _$CardsLearnEventCopyWithImpl<$Res, CardsLearnEvent>;
}

/// @nodoc
class _$CardsLearnEventCopyWithImpl<$Res, $Val extends CardsLearnEvent>
    implements $CardsLearnEventCopyWith<$Res> {
  _$CardsLearnEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ListenDictionaryImplCopyWith<$Res> {
  factory _$$ListenDictionaryImplCopyWith(_$ListenDictionaryImpl value,
          $Res Function(_$ListenDictionaryImpl) then) =
      __$$ListenDictionaryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenDictionaryImplCopyWithImpl<$Res>
    extends _$CardsLearnEventCopyWithImpl<$Res, _$ListenDictionaryImpl>
    implements _$$ListenDictionaryImplCopyWith<$Res> {
  __$$ListenDictionaryImplCopyWithImpl(_$ListenDictionaryImpl _value,
      $Res Function(_$ListenDictionaryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenDictionaryImpl implements _ListenDictionary {
  const _$ListenDictionaryImpl();

  @override
  String toString() {
    return 'CardsLearnEvent.listenDictionary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenDictionaryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenDictionary,
  }) {
    return listenDictionary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenDictionary,
  }) {
    return listenDictionary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenDictionary,
    required TResult orElse(),
  }) {
    if (listenDictionary != null) {
      return listenDictionary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenDictionary value) listenDictionary,
  }) {
    return listenDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenDictionary value)? listenDictionary,
  }) {
    return listenDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenDictionary value)? listenDictionary,
    required TResult orElse(),
  }) {
    if (listenDictionary != null) {
      return listenDictionary(this);
    }
    return orElse();
  }
}

abstract class _ListenDictionary implements CardsLearnEvent {
  const factory _ListenDictionary() = _$ListenDictionaryImpl;
}

/// @nodoc
mixin _$CardsLearnState {
  FlDictionary? get dictionary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardsLearnStateCopyWith<CardsLearnState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsLearnStateCopyWith<$Res> {
  factory $CardsLearnStateCopyWith(
          CardsLearnState value, $Res Function(CardsLearnState) then) =
      _$CardsLearnStateCopyWithImpl<$Res, CardsLearnState>;
  @useResult
  $Res call({FlDictionary? dictionary});

  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class _$CardsLearnStateCopyWithImpl<$Res, $Val extends CardsLearnState>
    implements $CardsLearnStateCopyWith<$Res> {
  _$CardsLearnStateCopyWithImpl(this._value, this._then);

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
abstract class _$$CardsLearnStateImplCopyWith<$Res>
    implements $CardsLearnStateCopyWith<$Res> {
  factory _$$CardsLearnStateImplCopyWith(_$CardsLearnStateImpl value,
          $Res Function(_$CardsLearnStateImpl) then) =
      __$$CardsLearnStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlDictionary? dictionary});

  @override
  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class __$$CardsLearnStateImplCopyWithImpl<$Res>
    extends _$CardsLearnStateCopyWithImpl<$Res, _$CardsLearnStateImpl>
    implements _$$CardsLearnStateImplCopyWith<$Res> {
  __$$CardsLearnStateImplCopyWithImpl(
      _$CardsLearnStateImpl _value, $Res Function(_$CardsLearnStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = freezed,
  }) {
    return _then(_$CardsLearnStateImpl(
      dictionary: freezed == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ));
  }
}

/// @nodoc

class _$CardsLearnStateImpl implements _CardsLearnState {
  const _$CardsLearnStateImpl({this.dictionary});

  @override
  final FlDictionary? dictionary;

  @override
  String toString() {
    return 'CardsLearnState(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsLearnStateImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsLearnStateImplCopyWith<_$CardsLearnStateImpl> get copyWith =>
      __$$CardsLearnStateImplCopyWithImpl<_$CardsLearnStateImpl>(
          this, _$identity);
}

abstract class _CardsLearnState implements CardsLearnState {
  const factory _CardsLearnState({final FlDictionary? dictionary}) =
      _$CardsLearnStateImpl;

  @override
  FlDictionary? get dictionary;
  @override
  @JsonKey(ignore: true)
  _$$CardsLearnStateImplCopyWith<_$CardsLearnStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
