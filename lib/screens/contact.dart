import 'package:atlpraisehouse/widgets/const.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactPage extends StatelessWidget {
  const contactPage({super.key});

  @override
  Widget build(BuildContext context) {
    void _launchPhone(String phoneNumber) async {
      final url = 'tel:$phoneNumber';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

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
                'Contact Us',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 192, 20),
                    foregroundColor: Colors.black),
                onPressed: () {
                  _launchPhone(
                      '1234567890'); // Replace with the desired phone number
                },
                child: const Text(
                  "📞  678-325-7944 ",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 10.0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 192, 20),
                    foregroundColor: Colors.black),
                onPressed: () async {
                  Uri email = Uri.parse('http://zliferadio93.5@gmail.com');
                  if (await launchUrl(email)) {
                    //dialer opened
                  } else {
                    //dailer is not opened
                  }
                },
                child: const Text(
                  "📧  Email Us: zliferadio93.5@gmail.com ",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
