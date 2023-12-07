// ignore_for_file: camel_case_types

import 'package:atlpraisehouse/widgets/const.dart';
import 'package:flutter/material.dart';

class aboutpage extends StatelessWidget {
  const aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              child: const Text(
                'About Us',
                style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              child: const Text(
                '''With an extended hand and a joyful spirit we welcome you today! We are blessed by your visit, and we believe that God has directed our paths to intersect. Our meeting is not an accident but a divine appointment, so we want to express Christ’s love to you with genuine warmth. We’re delighted to know you and we’re excited to share with you the marvelous ways in which God’s hand is at work in Atl Praise House Ministry. We believe you will discover that our fellowship is truly a family, rich in the relationships that matter most. Growing together, we worship, we serve, we reach out to our world with life-transforming truth. We reach out to you, as well.''',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              child: const Text(
                '''Thank You for Visiting Atl Praise House Ministry.''',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
