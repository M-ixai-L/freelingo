part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isError,
    @Default(false) bool isLoading,
    @Default(false) bool isDictionarySaved,
    FlUser? user,
    @Default([]) List<FlDictionary> dictionaries,
  }) = _HomeState$;
}
