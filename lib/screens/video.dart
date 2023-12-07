// ignore_for_file: camel_case_types, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:atlpraisehouse/widgets/const.dart';
import 'package:atlpraisehouse/widgets/videoplayer.dart';
import 'package:flutter/material.dart';

class videoPlayer extends StatefulWidget {
  const videoPlayer({super.key});

  @override
  State<videoPlayer> createState() => _videoPlayerState();
}

class _videoPlayerState extends State<videoPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        foregroundColor: textColor,
        title: const Text('Video'),
        backgroundColor: appbarColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Image.asset(
                    'lib/assets/images/atllogo.png',
                    width: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
              const SizedBox(height: 20),
              const Text(
                '24 Hours None Stop Gospel',
                softWrap: false,
                overflow: TextOverflow.fade,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color.fromARGB(255, 217, 174, 0)),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 40.0,
                  left: 10.0,
                  right: 10.0,
                ),
                width: 400,
                height: 230,
                child: const htmlstream(),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
