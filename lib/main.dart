import 'package:flutter/material.dart';
import 'package:kitchen_companion/views/home_screen.dart';
import 'package:kitchen_companion/views/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen Companion',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.receipt),
                ),
                Tab(
                  icon: Icon(Icons.question_mark),
                ),
              ]),
            ),
            body: const TabBarView(children: [
              HomeScreen(),
              UnknownScreen(),
            ]),
          )),
    );
  }
}
