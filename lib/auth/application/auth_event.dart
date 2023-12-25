part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signOut() = SignOut;

  const factory AuthEvent.init() = Init;

  const factory AuthEvent.signInWithGoogle() = SignInWithGoogle;

  const factory AuthEvent.signInWithEmailAndPassword({
    required String email,
    required String password,
  }) = SignInWithEmailAndPassword;

  const factory AuthEvent.createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) = CreateUserWithEmailAndPassword;
}
