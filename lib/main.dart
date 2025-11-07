import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

const name = ['hello', 'hi', 'sai'];

extension RandomElement<T> on Iterable<T> {
  T randomEle() => elementAt(math.Random().nextInt(length));
}

class NamesCubit extends Cubit<String?> {
  NamesCubit() : super(null);

  void pickRandomName() {
    emit(name.randomEle());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final NamesCubit names;

  @override
  void initState() {
    super.initState();
    names = NamesCubit();
  }

  @override
  void dispose() {
    super.dispose();
    names.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: StreamBuilder<String?>(
        stream: names.stream,
        builder: (context, snapshot) {
          final button = TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () => {names.pickRandomName()},
            child: Text(
              "Pick a Random Name",
              style: TextStyle(color: Colors.white),
            ),
          );
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return button;
            case ConnectionState.waiting:
              return button;
            case ConnectionState.active:
              return Center(
                child: Column(
                  children: [
                    Text(snapshot.data ?? ' '),
                    SizedBox(
                      height: 15,
                    ),
                    button,
                  ],
                ),
              );
            case ConnectionState.done:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
