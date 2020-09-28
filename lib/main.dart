import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc_ver1/bloc/counter_bloc.dart';
import 'package:flutter_bloc_ver1/bloc/bloc.dart';
import 'package:flutter_bloc_ver1/mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterBloc>(
          builder: (context) => CounterBloc(), child: MainPage()),
    );
  }
}
