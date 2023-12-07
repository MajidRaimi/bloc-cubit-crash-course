part of 'counter_bloc.dart';

// Sealed class CounterEvent serves as the base class for different counter-related events
sealed class CounterEvent {}

// Subclass representing the event of incrementing the counter
class CounterIncremented implements CounterEvent {
  // Constructor for CounterIncremented
  const CounterIncremented();
}

// Subclass representing the event of resetting the counter
class CounterReset implements CounterEvent {
  // Constructor for CounterReset
  const CounterReset();
}
