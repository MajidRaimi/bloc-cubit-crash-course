import 'package:flutter_bloc/flutter_bloc.dart';

// CounterCubit extends Cubit<int> to manage the counter state
class CounterCubit extends Cubit<int> {
  // Constructor initializes the initial state of the counter to 0
  CounterCubit() : super(0);

  // Method to increment the counter state by 1
  void increment() => emit(state + 1);

  // Method to reset the counter state to 0
  void reset() => emit(0);
}
