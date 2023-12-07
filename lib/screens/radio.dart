// ignore_for_file: avoid_unnecessary_containers, camel_case_types

import 'package:atlpraisehouse/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

class playerPage extends StatefulWidget {
  const playerPage({super.key});

  @override
  State<playerPage> createState() => _playerPageState();
}

class _playerPageState extends State<playerPage> {
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;
  List<String>? metadata;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'alt praise house',
      url: 'https://auds1.intacs.com/atlpraisehouse',
      imagePath: 'lib/assets/images/atllogo.png',
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });

    _radioPlayer.metadataStream.listen((value) {
      setState(() {
        metadata = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        foregroundColor: textColor,
        title: const Text('Radio'),
        backgroundColor: appbarColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: mybackground,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Image.asset(
                  'lib/assets/images/atllogo.png',
                  width: 280,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Text(
                'ALT PRAISE HOUSE',
                style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              '24 Hours None Stop Gospel',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(255, 217, 174, 0)),
            ),
            Text(
              metadata?[1] ?? '',
              softWrap: false,
              overflow: TextOverflow.fade,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 180),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: btm,
        onPressed: () {
          isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
        },
        tooltip: 'Control button',
        child: Icon(
          isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
