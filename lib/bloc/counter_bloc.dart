import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(CounterInitial(0)) {
    on<IncrementEvent>((event, emit) {
      emit(CounterInitial(state.value + 1));
    });
    on<DecrementEvent>((event, emit) {
      emit(CounterInitial(state.value - 1));
    });
  }
}
