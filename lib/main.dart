import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Playsound(int sn) {
    final Player = AudioCache();
    Player.play(
      'note$sn.wav',
    );
  }

  Expanded buildkey(int sound) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          Playsound(sound);
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
            child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'images/image.jpg',
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1),
              buildkey(2),
              buildkey(3),
              buildkey(4),
              buildkey(5),
              buildkey(6),
            ],
          ),
        )),
      ),
    );
  }
}
