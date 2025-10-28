import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Controller/bloc/counter/counter_bloc.dart';
import '../Controller/bloc/counter/counter_event.dart';
import '../Controller/bloc/counter/counter_state.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Counter", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (_, state) {
                final count = (state as CounterValue).count;
                return Text('$count', style: TextStyle(fontSize: 48));
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () => bloc.add(Increment()),
              child: Icon(Icons.add, size: 32),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () => bloc.add(Decrement()),
              child: Icon(Icons.remove, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}