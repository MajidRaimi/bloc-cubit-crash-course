import 'package:bloc_crash_course/bloc/counter_bloc.dart';
import 'package:bloc_crash_course/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/pages.dart';

class App extends StatelessWidget {
  // Constructor with a named parameter 'key'
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // MultiBlocProvider is used to provide multiple BLoCs/Cubits to the widget tree
    return MultiBlocProvider(
      providers: [
        // BlocProvider for CounterCubit, which is a Cubit for state management
        BlocProvider(create: (_) => CounterCubit()),
        // BlocProvider for CounterBloc, which is a BLoC for state management
        BlocProvider(create: (_) => CounterBloc()),
      ],
      child: MaterialApp(
        // Configuration for the overall MaterialApp
        debugShowCheckedModeBanner: false,
        title: 'Flutter Bloc/Cubit',
        theme: ThemeData(useMaterial3: true),
        // The home page of the application, which is HomePage in this case
        home: const HomePage(),
      ),
    );
  }
}
