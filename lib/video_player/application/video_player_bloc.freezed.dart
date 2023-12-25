// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoPlayerEvent {
  FlDictionary? get dictionary => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary? dictionary) selectDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary? dictionary)? selectDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary? dictionary)? selectDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDictionary value) selectDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDictionary value)? selectDictionary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDictionary value)? selectDictionary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerEventCopyWith<VideoPlayerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerEventCopyWith<$Res> {
  factory $VideoPlayerEventCopyWith(
          VideoPlayerEvent value, $Res Function(VideoPlayerEvent) then) =
      _$VideoPlayerEventCopyWithImpl<$Res, VideoPlayerEvent>;
  @useResult
  $Res call({FlDictionary? dictionary});

  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class _$VideoPlayerEventCopyWithImpl<$Res, $Val extends VideoPlayerEvent>
    implements $VideoPlayerEventCopyWith<$Res> {
  _$VideoPlayerEventCopyWithImpl(this._value, this._then);

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
abstract class _$$SelectDictionaryImplCopyWith<$Res>
    implements $VideoPlayerEventCopyWith<$Res> {
  factory _$$SelectDictionaryImplCopyWith(_$SelectDictionaryImpl value,
          $Res Function(_$SelectDictionaryImpl) then) =
      __$$SelectDictionaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlDictionary? dictionary});

  @override
  $FlDictionaryCopyWith<$Res>? get dictionary;
}

/// @nodoc
class __$$SelectDictionaryImplCopyWithImpl<$Res>
    extends _$VideoPlayerEventCopyWithImpl<$Res, _$SelectDictionaryImpl>
    implements _$$SelectDictionaryImplCopyWith<$Res> {
  __$$SelectDictionaryImplCopyWithImpl(_$SelectDictionaryImpl _value,
      $Res Function(_$SelectDictionaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = freezed,
  }) {
    return _then(_$SelectDictionaryImpl(
      dictionary: freezed == dictionary
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ));
  }
}

/// @nodoc

class _$SelectDictionaryImpl implements _SelectDictionary {
  const _$SelectDictionaryImpl({this.dictionary});

  @override
  final FlDictionary? dictionary;

  @override
  String toString() {
    return 'VideoPlayerEvent.selectDictionary(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDictionaryImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDictionaryImplCopyWith<_$SelectDictionaryImpl> get copyWith =>
      __$$SelectDictionaryImplCopyWithImpl<_$SelectDictionaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary? dictionary) selectDictionary,
  }) {
    return selectDictionary(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary? dictionary)? selectDictionary,
  }) {
    return selectDictionary?.call(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary? dictionary)? selectDictionary,
    required TResult orElse(),
  }) {
    if (selectDictionary != null) {
      return selectDictionary(dictionary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectDictionary value) selectDictionary,
  }) {
    return selectDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectDictionary value)? selectDictionary,
  }) {
    return selectDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectDictionary value)? selectDictionary,
    required TResult orElse(),
  }) {
    if (selectDictionary != null) {
      return selectDictionary(this);
    }
    return orElse();
  }
}

abstract class _SelectDictionary implements VideoPlayerEvent {
  const factory _SelectDictionary({final FlDictionary? dictionary}) =
      _$SelectDictionaryImpl;

  @override
  FlDictionary? get dictionary;
  @override
  @JsonKey(ignore: true)
  _$$SelectDictionaryImplCopyWith<_$SelectDictionaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoPlayerState {
  FlDictionary? get selectedDictionary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoPlayerStateCopyWith<VideoPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
  @useResult
  $Res call({FlDictionary? selectedDictionary});

  $FlDictionaryCopyWith<$Res>? get selectedDictionary;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDictionary = freezed,
  }) {
    return _then(_value.copyWith(
      selectedDictionary: freezed == selectedDictionary
          ? _value.selectedDictionary
          : selectedDictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlDictionaryCopyWith<$Res>? get selectedDictionary {
    if (_value.selectedDictionary == null) {
      return null;
    }

    return $FlDictionaryCopyWith<$Res>(_value.selectedDictionary!, (value) {
      return _then(_value.copyWith(selectedDictionary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoPlayerStateImplCopyWith<$Res>
    implements $VideoPlayerStateCopyWith<$Res> {
  factory _$$VideoPlayerStateImplCopyWith(_$VideoPlayerStateImpl value,
          $Res Function(_$VideoPlayerStateImpl) then) =
      __$$VideoPlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlDictionary? selectedDictionary});

  @override
  $FlDictionaryCopyWith<$Res>? get selectedDictionary;
}

/// @nodoc
class __$$VideoPlayerStateImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerStateImpl>
    implements _$$VideoPlayerStateImplCopyWith<$Res> {
  __$$VideoPlayerStateImplCopyWithImpl(_$VideoPlayerStateImpl _value,
      $Res Function(_$VideoPlayerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDictionary = freezed,
  }) {
    return _then(_$VideoPlayerStateImpl(
      selectedDictionary: freezed == selectedDictionary
          ? _value.selectedDictionary
          : selectedDictionary // ignore: cast_nullable_to_non_nullable
              as FlDictionary?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerStateImpl implements _VideoPlayerState {
  const _$VideoPlayerStateImpl({this.selectedDictionary});

  @override
  final FlDictionary? selectedDictionary;

  @override
  String toString() {
    return 'VideoPlayerState(selectedDictionary: $selectedDictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerStateImpl &&
            (identical(other.selectedDictionary, selectedDictionary) ||
                other.selectedDictionary == selectedDictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      __$$VideoPlayerStateImplCopyWithImpl<_$VideoPlayerStateImpl>(
          this, _$identity);
}

abstract class _VideoPlayerState implements VideoPlayerState {
  const factory _VideoPlayerState({final FlDictionary? selectedDictionary}) =
      _$VideoPlayerStateImpl;

  @override
  FlDictionary? get selectedDictionary;
  @override
  @JsonKey(ignore: true)
  _$$VideoPlayerStateImplCopyWith<_$VideoPlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
