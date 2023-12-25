import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freelingo/core/models/fl_dictionary.dart';
import 'package:freelingo/core/models/fl_word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cards_learn_bloc.freezed.dart';
part 'cards_learn_event.dart';
part 'cards_learn_state.dart';

@injectable
class CardsLearnBloc extends Bloc<CardsLearnEvent, CardsLearnState> {
  CardsLearnBloc() : super(const CardsLearnState()) {
    on<CardsLearnEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
