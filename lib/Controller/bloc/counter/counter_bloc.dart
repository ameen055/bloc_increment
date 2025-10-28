import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterValue(0)) {
    on<Increment>((e, emit) {
      final current = (state as CounterValue).count;
      emit(CounterValue(current + 1));
    });
    on<Decrement>((e, emit) {
      final current = (state as CounterValue).count;
      emit(CounterValue(current - 1));
    });
  }
}
