

# Flutter Counter App with BLoC and Cubit 🚀

This branch is dedicated to the Counter App example as part of the Flutter State Management Crash Course by Rivaan Ranawat. In this example, we explore state management using both BLoC (Business Logic Component) and Cubit.

## Counter App Overview 📱

The Counter App is a simple Flutter application that demonstrates how to use BLoC and Cubit for state management. Users can increment the counter, reset it, and witness the real-time updates in the UI.

## State Management with BLoC and Cubit 🧠

### BLoC (Business Logic Component)

BLoC is an architectural pattern that helps manage the state of a Flutter application by separating the business logic from the UI. It utilizes streams to handle data flow and events, promoting a clear and scalable code structure.

#### `CounterBloc`

- The `CounterBloc` class extends `Bloc<CounterEvent, int>` to handle events and manage the counter state.

- The constructor initializes the initial state of the counter to 0.

- Event handlers are defined using the `on` method for `CounterIncremented` and `CounterReset` events.

```dart
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) => emit(state + 1));
    on<CounterReset>((event, emit) => emit(0));
  }
}
```

### Cubit

Cubit is a lightweight state management solution that simplifies the implementation of BLoC for smaller applications. It focuses on simplicity and ease of use, providing a straightforward way to manage state.

#### `CounterCubit`

- The `CounterCubit` class extends `Cubit<int>` to manage the counter state.

- The constructor initializes the initial state of the counter to 0.

- Methods `increment` and `reset` are defined to update the counter state.

```dart
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  void reset() => emit(0);
}
```

## Project Structure 📁

The `counter-app` branch includes the following files:

- `main.dart`: Entry point of the application, initializing the `App` widget.

- `app.dart`: The `App` widget sets up the MaterialApp and provides BLoCs/Cubits using `MultiBlocProvider`.

- `home_page.dart`: The `HomePage` widget displays the counter and provides buttons for incrementing and resetting.

- `counter_bloc.dart`: Definition of the `CounterBloc` class.

- `counter_cubit.dart`: Definition of the `CounterCubit` class.

- `counter_event.dart`: Definition of the `CounterEvent` class and its subclasses.

## How to Run 🚀

To run the Counter App:

1. Clone this repository.

2. Checkout the `counter-app` branch.

3. Open the project in your preferred Flutter IDE.

4. Run the app on an emulator or physical device.

## Acknowledgment 🙌

**Author:** Majid Saleh Al-Raimi

Special thanks to [Rivaan Ranawat](https://github.com/RivaanRanawat) for the comprehensive Flutter State Management Crash Course. 🙏

Don't forget to check out the [YouTube video](https://youtu.be/SDk_GldOtK8?si=Pv5QcO75-vw2fE15) for a detailed walkthrough of building this Counter App with BLoC and Cubit.

Feel free to explore the provided code and experiment with both BLoC and Cubit in your Flutter applications!
