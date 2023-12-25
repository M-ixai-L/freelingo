import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/dictionary/infrastructure/dictionary_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dictionary_bloc.freezed.dart';
part 'dictionary_event.dart';
part 'dictionary_state.dart';

@injectable
class DictionaryBloc extends Bloc<DictionaryEvent, DictionaryState> {
  DictionaryBloc({
    required DictionaryService dictionaryService,
  })  : _dictionaryService = dictionaryService,
        super(const DictionaryState()) {
    on<_ListenDictionary>(_listenDictionary);
    on<_AddWord>(_addWord);
    on<_EmitDictionary>(_emitDictionary);
  }

  final DictionaryService _dictionaryService;
  StreamSubscription<FlDictionary?>? _dictionaryStream = null;

  FutureOr<void> _listenDictionary(
      _ListenDictionary event, Emitter<DictionaryState> emit) async {
    final userStream =
        await _dictionaryService.getCurrentDictionaryStream(event.dictionaryId);
    if (userStream != null) {
      _dictionaryStream?.cancel();
      _dictionaryStream = userStream.listen(
        (dictionary) {
          if (dictionary != null) {
            add(DictionaryEvent.emitDictionary(dictionary: dictionary));
          }
        },
      );
    }
  }

  FutureOr<void> _addWord(_AddWord event, Emitter<DictionaryState> emit) async {
    _dictionaryService.updateDictionary(event.dictionary);
    add(DictionaryEvent.emitDictionary(dictionary: event.dictionary));
  }

  FutureOr<void> _emitDictionary(
      _EmitDictionary event, Emitter<DictionaryState> emit) {
    emit(state.copyWith(dictionary: event.dictionary));
  }
}
