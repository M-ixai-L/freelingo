// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addDictionary,
    required TResult Function() clear,
    required TResult Function() listenUser,
    required TResult Function(FlUser user, List<FlDictionary>? dictionaries)
        emitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addDictionary,
    TResult? Function()? clear,
    TResult? Function()? listenUser,
    TResult? Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addDictionary,
    TResult Function()? clear,
    TResult Function()? listenUser,
    TResult Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDictionary value) addDictionary,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ListenUser value) listenUser,
    required TResult Function(_EmitUser value) emitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDictionary value)? addDictionary,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_ListenUser value)? listenUser,
    TResult? Function(_EmitUser value)? emitUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDictionary value)? addDictionary,
    TResult Function(_Clear value)? clear,
    TResult Function(_ListenUser value)? listenUser,
    TResult Function(_EmitUser value)? emitUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddDictionaryImplCopyWith<$Res> {
  factory _$$AddDictionaryImplCopyWith(
          _$AddDictionaryImpl value, $Res Function(_$AddDictionaryImpl) then) =
      __$$AddDictionaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlDictionary dictionary});

  $FlDictionaryCopyWith<$Res> get dictionary;
}

/// @nodoc
class __$$AddDictionaryImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$AddDictionaryImpl>
    implements _$$AddDictionaryImplCopyWith<$Res> {
  __$$AddDictionaryImplCopyWithImpl(
      _$AddDictionaryImpl _value, $Res Function(_$AddDictionaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dictionary = null,
  }) {
    return _then(_$AddDictionaryImpl(
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

class _$AddDictionaryImpl implements _AddDictionary {
  const _$AddDictionaryImpl({required this.dictionary});

  @override
  final FlDictionary dictionary;

  @override
  String toString() {
    return 'HomeEvent.addDictionary(dictionary: $dictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDictionaryImpl &&
            (identical(other.dictionary, dictionary) ||
                other.dictionary == dictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDictionaryImplCopyWith<_$AddDictionaryImpl> get copyWith =>
      __$$AddDictionaryImplCopyWithImpl<_$AddDictionaryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addDictionary,
    required TResult Function() clear,
    required TResult Function() listenUser,
    required TResult Function(FlUser user, List<FlDictionary>? dictionaries)
        emitUser,
  }) {
    return addDictionary(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addDictionary,
    TResult? Function()? clear,
    TResult? Function()? listenUser,
    TResult? Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
  }) {
    return addDictionary?.call(dictionary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addDictionary,
    TResult Function()? clear,
    TResult Function()? listenUser,
    TResult Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
    required TResult orElse(),
  }) {
    if (addDictionary != null) {
      return addDictionary(dictionary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDictionary value) addDictionary,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ListenUser value) listenUser,
    required TResult Function(_EmitUser value) emitUser,
  }) {
    return addDictionary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDictionary value)? addDictionary,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_ListenUser value)? listenUser,
    TResult? Function(_EmitUser value)? emitUser,
  }) {
    return addDictionary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDictionary value)? addDictionary,
    TResult Function(_Clear value)? clear,
    TResult Function(_ListenUser value)? listenUser,
    TResult Function(_EmitUser value)? emitUser,
    required TResult orElse(),
  }) {
    if (addDictionary != null) {
      return addDictionary(this);
    }
    return orElse();
  }
}

abstract class _AddDictionary implements HomeEvent {
  const factory _AddDictionary({required final FlDictionary dictionary}) =
      _$AddDictionaryImpl;

  FlDictionary get dictionary;
  @JsonKey(ignore: true)
  _$$AddDictionaryImplCopyWith<_$AddDictionaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'HomeEvent.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addDictionary,
    required TResult Function() clear,
    required TResult Function() listenUser,
    required TResult Function(FlUser user, List<FlDictionary>? dictionaries)
        emitUser,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addDictionary,
    TResult? Function()? clear,
    TResult? Function()? listenUser,
    TResult? Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addDictionary,
    TResult Function()? clear,
    TResult Function()? listenUser,
    TResult Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDictionary value) addDictionary,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ListenUser value) listenUser,
    required TResult Function(_EmitUser value) emitUser,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDictionary value)? addDictionary,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_ListenUser value)? listenUser,
    TResult? Function(_EmitUser value)? emitUser,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDictionary value)? addDictionary,
    TResult Function(_Clear value)? clear,
    TResult Function(_ListenUser value)? listenUser,
    TResult Function(_EmitUser value)? emitUser,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class _Clear implements HomeEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
abstract class _$$ListenUserImplCopyWith<$Res> {
  factory _$$ListenUserImplCopyWith(
          _$ListenUserImpl value, $Res Function(_$ListenUserImpl) then) =
      __$$ListenUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListenUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ListenUserImpl>
    implements _$$ListenUserImplCopyWith<$Res> {
  __$$ListenUserImplCopyWithImpl(
      _$ListenUserImpl _value, $Res Function(_$ListenUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ListenUserImpl implements _ListenUser {
  const _$ListenUserImpl();

  @override
  String toString() {
    return 'HomeEvent.listenUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListenUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addDictionary,
    required TResult Function() clear,
    required TResult Function() listenUser,
    required TResult Function(FlUser user, List<FlDictionary>? dictionaries)
        emitUser,
  }) {
    return listenUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addDictionary,
    TResult? Function()? clear,
    TResult? Function()? listenUser,
    TResult? Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
  }) {
    return listenUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addDictionary,
    TResult Function()? clear,
    TResult Function()? listenUser,
    TResult Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
    required TResult orElse(),
  }) {
    if (listenUser != null) {
      return listenUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDictionary value) addDictionary,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ListenUser value) listenUser,
    required TResult Function(_EmitUser value) emitUser,
  }) {
    return listenUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDictionary value)? addDictionary,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_ListenUser value)? listenUser,
    TResult? Function(_EmitUser value)? emitUser,
  }) {
    return listenUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDictionary value)? addDictionary,
    TResult Function(_Clear value)? clear,
    TResult Function(_ListenUser value)? listenUser,
    TResult Function(_EmitUser value)? emitUser,
    required TResult orElse(),
  }) {
    if (listenUser != null) {
      return listenUser(this);
    }
    return orElse();
  }
}

abstract class _ListenUser implements HomeEvent {
  const factory _ListenUser() = _$ListenUserImpl;
}

/// @nodoc
abstract class _$$EmitUserImplCopyWith<$Res> {
  factory _$$EmitUserImplCopyWith(
          _$EmitUserImpl value, $Res Function(_$EmitUserImpl) then) =
      __$$EmitUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlUser user, List<FlDictionary>? dictionaries});

  $FlUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$EmitUserImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$EmitUserImpl>
    implements _$$EmitUserImplCopyWith<$Res> {
  __$$EmitUserImplCopyWithImpl(
      _$EmitUserImpl _value, $Res Function(_$EmitUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? dictionaries = freezed,
  }) {
    return _then(_$EmitUserImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FlUser,
      dictionaries: freezed == dictionaries
          ? _value._dictionaries
          : dictionaries // ignore: cast_nullable_to_non_nullable
              as List<FlDictionary>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FlUserCopyWith<$Res> get user {
    return $FlUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$EmitUserImpl implements _EmitUser {
  const _$EmitUserImpl(
      {required this.user, final List<FlDictionary>? dictionaries})
      : _dictionaries = dictionaries;

  @override
  final FlUser user;
  final List<FlDictionary>? _dictionaries;
  @override
  List<FlDictionary>? get dictionaries {
    final value = _dictionaries;
    if (value == null) return null;
    if (_dictionaries is EqualUnmodifiableListView) return _dictionaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeEvent.emitUser(user: $user, dictionaries: $dictionaries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._dictionaries, _dictionaries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_dictionaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitUserImplCopyWith<_$EmitUserImpl> get copyWith =>
      __$$EmitUserImplCopyWithImpl<_$EmitUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FlDictionary dictionary) addDictionary,
    required TResult Function() clear,
    required TResult Function() listenUser,
    required TResult Function(FlUser user, List<FlDictionary>? dictionaries)
        emitUser,
  }) {
    return emitUser(user, dictionaries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FlDictionary dictionary)? addDictionary,
    TResult? Function()? clear,
    TResult? Function()? listenUser,
    TResult? Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
  }) {
    return emitUser?.call(user, dictionaries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FlDictionary dictionary)? addDictionary,
    TResult Function()? clear,
    TResult Function()? listenUser,
    TResult Function(FlUser user, List<FlDictionary>? dictionaries)? emitUser,
    required TResult orElse(),
  }) {
    if (emitUser != null) {
      return emitUser(user, dictionaries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddDictionary value) addDictionary,
    required TResult Function(_Clear value) clear,
    required TResult Function(_ListenUser value) listenUser,
    required TResult Function(_EmitUser value) emitUser,
  }) {
    return emitUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddDictionary value)? addDictionary,
    TResult? Function(_Clear value)? clear,
    TResult? Function(_ListenUser value)? listenUser,
    TResult? Function(_EmitUser value)? emitUser,
  }) {
    return emitUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddDictionary value)? addDictionary,
    TResult Function(_Clear value)? clear,
    TResult Function(_ListenUser value)? listenUser,
    TResult Function(_EmitUser value)? emitUser,
    required TResult orElse(),
  }) {
    if (emitUser != null) {
      return emitUser(this);
    }
    return orElse();
  }
}

abstract class _EmitUser implements HomeEvent {
  const factory _EmitUser(
      {required final FlUser user,
      final List<FlDictionary>? dictionaries}) = _$EmitUserImpl;

  FlUser get user;
  List<FlDictionary>? get dictionaries;
  @JsonKey(ignore: true)
  _$$EmitUserImplCopyWith<_$EmitUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isDictionarySaved => throw _privateConstructorUsedError;
  FlUser? get user => throw _privateConstructorUsedError;
  List<FlDictionary> get dictionaries => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isError,
      bool isLoading,
      bool isDictionarySaved,
      FlUser? user,
      List<FlDictionary> dictionaries});

  $FlUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isError = null,
    Object? isLoading = null,
    Object? isDictionarySaved = null,
    Object? user = freezed,
    Object? dictionaries = null,
  }) {
    return _then(_value.copyWith(
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDictionarySaved: null == isDictionarySaved
          ? _value.isDictionarySaved
          : isDictionarySaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FlUser?,
      dictionaries: null == dictionaries
          ? _value.dictionaries
          : dictionaries // ignore: cast_nullable_to_non_nullable
              as List<FlDictionary>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FlUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeState$ImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeState$ImplCopyWith(
          _$HomeState$Impl value, $Res Function(_$HomeState$Impl) then) =
      __$$HomeState$ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isError,
      bool isLoading,
      bool isDictionarySaved,
      FlUser? user,
      List<FlDictionary> dictionaries});

  @override
  $FlUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$HomeState$ImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeState$Impl>
    implements _$$HomeState$ImplCopyWith<$Res> {
  __$$HomeState$ImplCopyWithImpl(
      _$HomeState$Impl _value, $Res Function(_$HomeState$Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isError = null,
    Object? isLoading = null,
    Object? isDictionarySaved = null,
    Object? user = freezed,
    Object? dictionaries = null,
  }) {
    return _then(_$HomeState$Impl(
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDictionarySaved: null == isDictionarySaved
          ? _value.isDictionarySaved
          : isDictionarySaved // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FlUser?,
      dictionaries: null == dictionaries
          ? _value._dictionaries
          : dictionaries // ignore: cast_nullable_to_non_nullable
              as List<FlDictionary>,
    ));
  }
}

/// @nodoc

class _$HomeState$Impl implements _HomeState$ {
  const _$HomeState$Impl(
      {this.isError = false,
      this.isLoading = false,
      this.isDictionarySaved = false,
      this.user,
      final List<FlDictionary> dictionaries = const []})
      : _dictionaries = dictionaries;

  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isDictionarySaved;
  @override
  final FlUser? user;
  final List<FlDictionary> _dictionaries;
  @override
  @JsonKey()
  List<FlDictionary> get dictionaries {
    if (_dictionaries is EqualUnmodifiableListView) return _dictionaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dictionaries);
  }

  @override
  String toString() {
    return 'HomeState(isError: $isError, isLoading: $isLoading, isDictionarySaved: $isDictionarySaved, user: $user, dictionaries: $dictionaries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeState$Impl &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isDictionarySaved, isDictionarySaved) ||
                other.isDictionarySaved == isDictionarySaved) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._dictionaries, _dictionaries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isError,
      isLoading,
      isDictionarySaved,
      user,
      const DeepCollectionEquality().hash(_dictionaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeState$ImplCopyWith<_$HomeState$Impl> get copyWith =>
      __$$HomeState$ImplCopyWithImpl<_$HomeState$Impl>(this, _$identity);
}

abstract class _HomeState$ implements HomeState {
  const factory _HomeState$(
      {final bool isError,
      final bool isLoading,
      final bool isDictionarySaved,
      final FlUser? user,
      final List<FlDictionary> dictionaries}) = _$HomeState$Impl;

  @override
  bool get isError;
  @override
  bool get isLoading;
  @override
  bool get isDictionarySaved;
  @override
  FlUser? get user;
  @override
  List<FlDictionary> get dictionaries;
  @override
  @JsonKey(ignore: true)
  _$$HomeState$ImplCopyWith<_$HomeState$Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
