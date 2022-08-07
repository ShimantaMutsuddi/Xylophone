import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    AudioCache audioCache = AudioCache();
    audioCache.play('assets_note$number.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(soundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
        ),
        child: null,
      ),
    );
  }

  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /* Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(1);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                    ),
                    child: null,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(2);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                    ),
                    child: null,
                  ),
                ),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                  child: null,
                )),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(4);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: null,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(5);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    child: null,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(6);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    child: null,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      playSound(7);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreenAccent,
                    ),
                    child: null,
                  ),
                ),*/
                buildKey(color: Colors.red, soundNumber: 1),
                buildKey(color: Colors.green, soundNumber: 2),
                buildKey(color: Colors.amber, soundNumber: 3),
                buildKey(color: Colors.blue, soundNumber: 4),
                buildKey(color: Colors.white54, soundNumber: 5),
                buildKey(color: Colors.deepOrangeAccent, soundNumber: 6),
                buildKey(color: Colors.purpleAccent, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
child: TextButton(
onPressed: () {
// final player = AudioCache();
//   player.setSource(AssetSource('note1.wav'));
// player.load(AssetSource('note1.wav'));
AudioCache audioCache = AudioCache();
audioCache.play('assets_note1.wav');
},
child: Text('Click Me'),
),*/
