import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_user.dart';
import 'package:freelingo/core/repositories/auth_repository.dart';
import 'package:freelingo/home/infrastructure/home_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required AuthRepository authRepository,
    required HomeService homeService,
  })  : _authRepository = authRepository,
        _homeService = homeService,
        super(const HomeState()) {
    on<_AddDictionary>(_addDictionary);
    on<_Clear>(_clear);
    on<_ListenUser>(_listenUser);
    on<_EmitUser>(_emitUser);
  }

  final AuthRepository _authRepository;
  final HomeService _homeService;
  StreamSubscription<FlUser?>? _userStream = null;

  FutureOr<void> _addDictionary(
      _AddDictionary event, Emitter<HomeState> emit) async {
    final String dictionaryId =
        await _homeService.addDictionary(event.dictionary);
    final FlUser? user = await _authRepository.getCurrentUser();
    if (user != null) {
      final newDictionaries = [...user.dictionaries, dictionaryId];

      _authRepository.updateUser(
        user.copyWith(
          dictionaries: newDictionaries,
        ),
      );
    }

    emit(state.copyWith(isDictionarySaved: true));
  }

  FutureOr<void> _clear(_Clear event, Emitter<HomeState> emit) {}

  FutureOr<void> _listenUser(_ListenUser event, Emitter<HomeState> emit) async {
    final userStream = await _authRepository.getCurrentUserStream();
    if (userStream != null) {
      _userStream?.cancel();
      _userStream = userStream.listen(
        (user) async {
          if (user != null) {
            final dictionaries =
                await _homeService.getDictionaries(user.dictionaries);

            add(HomeEvent.emitUser(user: user, dictionaries: dictionaries));
          }
        },
      );
    }
  }

  FutureOr<void> _emitUser(_EmitUser event, Emitter<HomeState> emit) {
    emit(state.copyWith(
        user: event.user,
        dictionaries: event.dictionaries ?? state.dictionaries));
  }
}
