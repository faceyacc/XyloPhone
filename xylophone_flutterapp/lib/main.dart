import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XyloPhone());
}

class XyloPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
        ),
        body: SafeArea(
          child: Center(
            child: FlatButton(
              onPressed: () {
                AudioCache().play('note3.wav');
              },
              child: Text('hej'),
            ),
          ),
        ),
      ),
    );
  }
}
