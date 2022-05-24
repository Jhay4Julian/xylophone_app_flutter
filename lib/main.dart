import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

// ignore: use_key_in_widget_constructors
class XylophoneApp extends StatelessWidget {
  void playNote(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({required Color backgroundColor, required int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
        ),
        onPressed: () {
          playNote(noteNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Xylophone',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text('My Xylophone'),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(height: 15, color: Colors.black),
              buildKey(backgroundColor: Colors.red, noteNumber: 1),
              buildKey(backgroundColor: Colors.orange, noteNumber: 2),
              buildKey(backgroundColor: Colors.yellow, noteNumber: 3),
              buildKey(backgroundColor: Colors.green, noteNumber: 4),
              buildKey(backgroundColor: Colors.blue, noteNumber: 5),
              buildKey(backgroundColor: Colors.indigo, noteNumber: 6),
              buildKey(backgroundColor: Colors.purple, noteNumber: 7),
              Container(height: 15, color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }
}
