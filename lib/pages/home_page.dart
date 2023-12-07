import 'package:bloc_crash_course/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        actions: [
          IconButton(
            onPressed: counterCubit.reset,
            icon: const Icon(
              Icons.loop,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterCubit.increment,
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
            BlocBuilder<CounterCubit, int>(
              bloc: counterCubit,
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
