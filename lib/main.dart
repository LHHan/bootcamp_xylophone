import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    MaterialApp(
      home: XyloPhonePage(),
    ),
  );
}

class XyloPhonePage extends StatelessWidget {
  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play('assets_note$audioNumber.wav');
  }

  Expanded buildKey({Color color = Colors.red, int soundNumber = 1}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playAudio(soundNumber);
          },
          child: Container(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildKey(
              color: Colors.red,
              soundNumber: 1,
            ),
            buildKey(
              color: Colors.orange,
              soundNumber: 2,
            ),
            buildKey(
              color: Colors.yellow,
              soundNumber: 3,
            ),
            buildKey(
              color: Colors.green,
              soundNumber: 4,
            ),
            buildKey(
              color: Colors.teal,
              soundNumber: 5,
            ),
            buildKey(
              color: Colors.blue,
              soundNumber: 6,
            ),
            buildKey(
              color: Colors.purple,
              soundNumber: 7,
            ),
          ],
        ),
      ),
    );
  }
}
