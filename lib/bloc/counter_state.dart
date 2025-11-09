part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {
  final int value;
  CounterInitial(this.value);
}
