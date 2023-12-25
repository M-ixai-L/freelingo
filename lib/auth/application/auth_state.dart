part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    FlUser? user,
    @Default(false) bool isError,
    @Default(true) bool isLoading,
  }) = _AuthState$;
}
