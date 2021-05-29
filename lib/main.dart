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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    playAudio(1);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    playAudio(2);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    playAudio(3);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    playAudio(4);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.teal,
                child: TextButton(
                  onPressed: () {
                    playAudio(5);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    playAudio(6);
                  },
                  child: Container(),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {
                    playAudio(7);
                  },
                  child: Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
