import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XyloPhone());

class XyloPhone extends StatelessWidget {
  Expanded xyloTile(int tileNumber, Color color, String noteString) {
    return Expanded(
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              noteString,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ],
        ),
        color: color,
        onPressed: () {
          AudioCache().play('note$tileNumber.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('XyloPhone App'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloTile(1, Colors.red, 'C'),
              xyloTile(2, Colors.orange, 'D'),
              xyloTile(3, Colors.yellow, 'E'),
              xyloTile(4, Colors.green, 'F'),
              xyloTile(5, Colors.teal, 'G'),
              xyloTile(6, Colors.lightBlue, 'A'),
              xyloTile(7, Colors.purple, 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
