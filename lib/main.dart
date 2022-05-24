import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text('My Xylophone'),),
          body: Column(
            children: const [

            ],
          ),
        ),
      ),
    );
  }
}