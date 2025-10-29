import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      switch (event) {
        case CounterEvent.increment:
          emit(state + 1);
          break;
        case CounterEvent.decrement:
          emit(state - 1);
          break;
      }
    });
  }
}

void main() async {
  final bloc = CounterBloc();

  final streamSubscription = bloc.stream.listen((state) {
    if (kDebugMode) {
      print("Current state :  $state");
    }
  });

  bloc.add(CounterEvent.increment);
  bloc.add(CounterEvent.increment);
  bloc.add(CounterEvent.decrement);
  bloc.add(CounterEvent.increment);

  await Future.delayed(Duration(seconds: 2));

  await streamSubscription.cancel();
  bloc.close();
}
