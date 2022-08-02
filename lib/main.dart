import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Expanded button(int number, Color color) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(
              Audio("assets/audios/note$number.wav"),
            );
          },
          child: Text(""),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(1, Colors.blueAccent),
              button(2, Colors.orange),
              button(3, Colors.teal),
              button(4, Colors.greenAccent),
              button(5, Colors.lime),
              button(6, Colors.redAccent),
              button(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
