// ignore_for_file: camel_case_types, avoid_unnecessary_containers, sort_child_properties_last

import 'package:atlpraisehouse/screens/radio.dart';
import 'package:atlpraisehouse/screens/video.dart';
import 'package:atlpraisehouse/widgets/const.dart';
import 'package:flutter/material.dart';

class frontScreen extends StatelessWidget {
  const frontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 24, 115, 36),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                child: Image.asset(
                  "lib/assets/images/atllogo.png",
                  width: 300,
                  height: 300,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome To',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'ALT PRAISE HOUSE',
                  style: TextStyle(fontSize: 38, color: Colors.amber),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: btm, foregroundColor: textColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const playerPage()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Listen Live Radio',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: btm, foregroundColor: textColor),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const videoPlayer()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'View Live Video',
                        style: TextStyle(fontSize: 20),
                      ),
                      Icon(Icons.play_arrow),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
