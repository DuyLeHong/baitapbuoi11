import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      if (event is IncreaseEvent) {
        final newState = state.copyWith(channel: state.channel + 1);
        emit(newState);
      } else if (event is DecreaseEvent) {
        final newState = state.copyWith(channel: state.channel - 1);
        emit(newState);
      } else if (event is IncreaseVolumnEvent) {
        final newState = state.copyWith(volumn: state.volumn + 5);
        emit(newState);
      } else if (event is DecreaseVolumnEvent) {
        final newState = state.copyWith(volumn: state.volumn - 10);
        emit(newState);
      } else {
        final newState = state.copyWith(volumn: 0);
        emit(newState);
      }
    });
  }
}
