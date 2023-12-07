import 'package:bloc_crash_course/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  // Constructor with a named parameter 'key'
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Access the CounterCubit instance from the widget tree
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    // Access the CounterBloc instance from the widget tree
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          IconButton(
            // Dispatch an event to reset the counter in the CounterBloc
            onPressed: () => counterBloc.add(const CounterReset()),
            icon: const Icon(
              Icons.loop,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // Dispatch an event to increment the counter in the CounterBloc
        onPressed: () => counterBloc.add(const CounterIncremented()),
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            // Use BlocBuilder to rebuild the UI when the counter state changes
            BlocBuilder<CounterBloc, int>(
              builder: (context, counter) {
                return Text(
                  counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
