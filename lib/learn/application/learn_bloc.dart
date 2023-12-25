import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'learn_event.dart';
part 'learn_state.dart';
part 'learn_bloc.freezed.dart';

class LearnBloc extends Bloc<LearnEvent, LearnState> {
  LearnBloc() : super(const LearnState.initial()) {
    on<LearnEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
