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
          title: Text('XyloPhone App'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Center(
            child: Column(children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  AudioCache().play('note1.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  AudioCache().play('note2.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  AudioCache().play('note3.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  AudioCache().play('note4.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.green[900],
                onPressed: () {
                  AudioCache().play('note5.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  AudioCache().play('note6.wav');
                },
                child: null,
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  AudioCache().play('note7.wav');
                },
                child: null,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
