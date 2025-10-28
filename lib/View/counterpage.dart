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
      appBar: AppBar(title: Text("Counter")),
      body: Column(
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (_, state) {
              final count = (state as CounterValue).count;
              return Text('$count', style: TextStyle(fontSize: 48));
            },
          ),
          TextButton(
            onPressed: () => bloc.add(Increment()),
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10),
          TextButton(onPressed: () => bloc.add(Decrement()), child: Text("-")),
        ],
      ),
    );
  }
}
