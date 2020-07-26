import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    color: Colors.red,
                    child: Text('Do'),
                    onPressed: () {
                      playSound(1);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.orange,
                    child: Text('Re'),
                    onPressed: () {
                      playSound(2);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.yellow,
                    child: Text('Mi'),
                    onPressed: () {
                      playSound(3);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.green,
                    child: Text('Fa'),
                    onPressed: () {
                      playSound(4);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.teal,
                    child: Text('Sol'),
                    onPressed: () {
                      playSound(5);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.blue,
                    child: Text('La'),
                    onPressed: () {
                      playSound(6);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    color: Colors.purple,
                    child: Text('Si'),
                    onPressed: () {
                      playSound(7);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
