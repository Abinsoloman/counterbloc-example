import 'package:counterblock2/bloc/counterblock2_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counterblock2Bloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          ElevatedButton(
              onPressed: () {
                context.read<Counterblock2Bloc>().add(increment());
              },
              child: Icon(Icons.add)),
          BlocBuilder<Counterblock2Bloc, Counterblock2State>(
            builder: (context, state) {
              return Text("${state.count}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                context.read<Counterblock2Bloc>().add(decrement());
              },
              child: Icon(Icons.minimize))
        ],
      ),
    );
  }
}
