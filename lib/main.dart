import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Controller/bloc/counter/counter_bloc.dart';
import 'View/counterpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CounterPage());
  }
}

void main() {
  runApp(BlocProvider(create: (_) => CounterBloc(), child: MyApp()));
}

// Person(this.name, this.age,{this.sex=""});
//
// Person('afeef',23,sex = 'male')
//
// Person({this.name, this.age});
//
// Person(,age=45,name='arun')
