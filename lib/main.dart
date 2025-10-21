import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/Widgets/home.dart';
import 'package:sample/Widgets/list_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider()),
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
