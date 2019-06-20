import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final AudioCache player = AudioCache();
  void _play(String path) => player.play(path);

  Widget _key(MaterialColor color, String audioPath) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => _play(audioPath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _key(Colors.red, 'note1.wav'),
              _key(Colors.orange, 'note2.wav'),
              _key(Colors.yellow, 'note3.wav'),
              _key(Colors.green, 'note4.wav'),
              _key(Colors.blue, 'note5.wav'),
              _key(Colors.indigo, 'note6.wav'),
              _key(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
