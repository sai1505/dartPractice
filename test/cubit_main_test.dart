import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

void main() {
  final cubit = CounterCubit();
  debugPrint('Initial: ${cubit.state}');
  cubit.increment();
  debugPrint('After +1: ${cubit.state}');
  cubit.increment();
  debugPrint('After +1: ${cubit.state}');
  cubit.decrement();
  debugPrint('After -1: ${cubit.state}');
}
