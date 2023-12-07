import 'package:flutter_bloc/flutter_bloc.dart';

// Import the CounterEvent class using a part directive
part 'counter_event.dart';

// CounterBloc extends Bloc<CounterEvent, int> to handle events and manage the counter state
class CounterBloc extends Bloc<CounterEvent, int> {
  // Constructor initializes the initial state of the counter to 0
  CounterBloc() : super(0) {
    // Define event handlers using the 'on' method
    on<CounterIncremented>((event, emit) => emit(state + 1));
    on<CounterReset>((event, emit) => emit(0));
  }
}
