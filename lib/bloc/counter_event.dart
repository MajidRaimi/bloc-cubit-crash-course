part of 'counter_bloc.dart';

sealed class CounterEvent {}

final class CounterIncremented implements CounterEvent {
  const CounterIncremented();
}

final class CounterReset implements CounterEvent {
  const CounterReset();
}
