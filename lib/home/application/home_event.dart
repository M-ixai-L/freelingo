part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.addDictionary({
    required FlDictionary dictionary,
  }) = _AddDictionary;

  const factory HomeEvent.clear() = _Clear;
  const factory HomeEvent.listenUser() = _ListenUser;
  const factory HomeEvent.emitUser({
    required FlUser user,
    List<FlDictionary>? dictionaries,
  }) = _EmitUser;
}
