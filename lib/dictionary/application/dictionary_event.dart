part of 'dictionary_bloc.dart';

@freezed
class DictionaryEvent with _$DictionaryEvent {
  const factory DictionaryEvent.addWord({required FlDictionary dictionary}) =
      _AddWord;

  const factory DictionaryEvent.listenDictionary({
    required String dictionaryId,
  }) = _ListenDictionary;

  const factory DictionaryEvent.emitDictionary({
    required FlDictionary dictionary,
  }) = _EmitDictionary;
}
