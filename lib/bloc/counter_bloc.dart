import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is Increment) {
      yield CounterState(state.value + 1);
    } else if (event is Decrement) {
      yield CounterState(state.value - 1);
    } else if (event is ResetUlangState) {
      yield CounterState(0);
    }
    // yield (event is Increment)
    //     ? CounterState(state.value + 1)
    //     : CounterState(state.value - 1);
  }
}
