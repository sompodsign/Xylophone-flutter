import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var audioPlayer = AudioCache();

  void playSound(int soundNumber) {
    audioPlayer.play('note$soundNumber.wav');
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
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(1);
                      },
                      child: Container(
                        padding: EdgeInsets.all(0),
                        width: double.infinity,
                        color: Colors.red,
                        // height: 100,
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(2);
                      },
                      child: Expanded(
                        child: Container(
                          // padding: EdgeInsets.all(0),
                          width: double.infinity,
                          color: Colors.orange,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(3);
                      },
                      child: Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.yellow,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(4);
                      },
                      child: Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(5);
                      },
                      child: Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.blueGrey,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(6);
                      },
                      child: Expanded(
                        child: Container(
                          width: double.infinity,
                          color: Colors.blue,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        playSound(7);
                      },
                      child: Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Colors.teal,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
