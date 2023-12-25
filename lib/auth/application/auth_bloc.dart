import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freelingo/core/models/fl_user.dart';
import 'package:freelingo/core/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(const AuthState()) {
    on<Init>(_init);
    on<SignInWithGoogle>(_signInWithGoogle);
    on<SignOut>(_signOut);
    on<SignInWithEmailAndPassword>(_signInWithEmailAndPassword);
    on<CreateUserWithEmailAndPassword>(_createUserWithEmailAndPassword);
  }
  final AuthRepository _authRepository;
  FutureOr<void> _signInWithGoogle(
    SignInWithGoogle event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final FlUser? user = await _authRepository.signInWithGoogle();
    emit(state.copyWith(user: user, isLoading: false));
  }

  FutureOr<void> _signInWithEmailAndPassword(
    SignInWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    try {
      final FlUser? user = await _authRepository.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(user: user, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isError: true, isLoading: false));
      debugPrint(e.toString());
    }
  }

  FutureOr<void> _signOut(SignOut event, Emitter<AuthState> emit) async {
    await _authRepository.signOut();
    emit(const AuthState());
  }

  FutureOr<void> _createUserWithEmailAndPassword(
    CreateUserWithEmailAndPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final FlUser? user = await _authRepository.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(user: user));
    } catch (e) {
      emit(state.copyWith(isError: true));
      debugPrint(e.toString());
    }
  }

  FutureOr<void> _init(Init event, Emitter<AuthState> emit) async {
    emit(state.copyWith(isLoading: true));
    final FlUser? user = await _authRepository.getCurrentUser();
    emit(state.copyWith(user: user, isLoading: false));
  }
}
