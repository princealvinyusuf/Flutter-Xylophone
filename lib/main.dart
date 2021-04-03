import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playSound({int number}) {
    final player = AudioCache();
    player.play("note$number.wav");
  }

  Widget buildKey({int numbers, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number: numbers);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(numbers: 1, color: Colors.red),
                buildKey(numbers: 2, color: Colors.orange),
                buildKey(numbers: 3, color: Colors.yellow),
                buildKey(numbers: 4, color: Colors.green),
                buildKey(numbers: 5, color: Colors.teal),
                buildKey(numbers: 6, color: Colors.blue),
                buildKey(numbers: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
