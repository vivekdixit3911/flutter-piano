// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget presseing(String audio, Color colro) {
    return Expanded(
      child: MaterialButton(
        onPressed: () => AudioPlayer().play(
          AssetSource(audio),
        ),
        color: colro,
        splashColor: const Color.fromARGB(255, 253, 10, 10),
        // child: Image.asset("assets/$photo"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              presseing(
                  'mixkit-orchestral-violin-treble-note-2279.wav', Colors.pink),
              presseing('piano-C6.wav', const Color.fromARGB(255, 254, 237, 3)),
              presseing('piano-G3.wav', const Color.fromARGB(255, 253, 10, 10)),
              presseing(
                'possessed-laugh-94851.mp3',
                const Color.fromARGB(255, 0, 0, 0),
              ),
              presseing(
                'piano-G5.wav',
                const Color.fromARGB(255, 177, 0, 247),
              ),
              presseing(
                'piano1.wav',
                const Color.fromARGB(255, 240, 0, 224),
              ),
              presseing('Color.fromARGB(255, 87, 0, 181)',
                  const Color.fromARGB(255, 87, 0, 181)),
            ],
          ),
        ),
      ),
    );
  }
}
