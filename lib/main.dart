import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var audioPlayer = AudioCache();

  void playSound(int soundNumber) {
    audioPlayer.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          padding: EdgeInsets.all(0),
          width: double.infinity,
          color: color,
          // height: 100,
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.black,
            child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(color: Colors.red, soundNumber: 1),
                  buildKey(color: Colors.green, soundNumber: 2),
                  buildKey(color: Colors.blue, soundNumber: 3),
                  buildKey(color: Colors.blueGrey, soundNumber: 4),
                  buildKey(color: Colors.orangeAccent, soundNumber: 5),
                  buildKey(color: Colors.deepOrange, soundNumber: 6),
                  buildKey(color: Colors.yellow, soundNumber: 7),
                ]),
          ),
        ),
      ),
    );
  }
}
