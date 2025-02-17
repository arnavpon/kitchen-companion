import 'package:flutter/material.dart';

class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key});

  @override
  State<UnknownScreen> createState() => UnknownScreenState();
}

class UnknownScreenState extends State<UnknownScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do...'),
      ),
      body: const Center(
        child: Text('To implement..'),
      ),
    );
  }
}
