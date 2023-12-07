// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, avoid_unnecessary_containers, unused_import, duplicate_import, unnecessary_const, deprecated_member_use, camel_case_types, unused_element

/*
 *  main.dart
 *
 *  Created by Ilya Chirkunov <xc@yar.net> on 28.12.2020.
 */

import 'package:atlpraisehouse/screens/about.dart';
import 'package:atlpraisehouse/screens/contact.dart';
import 'package:atlpraisehouse/screens/radio.dart';
import 'package:atlpraisehouse/screens/video.dart';
import 'package:atlpraisehouse/widgets/const.dart';
import 'package:atlpraisehouse/widgets/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

import 'package:share/share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<homePage> {
  int pageIndex = 0;
  final List pages = [
    frontScreen(),
    aboutpage(),
    /* playerPage(),
    videoPlayer(),
    contactPage(),*/
  ];
  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  void _launchPhone(String phoneNumber) async {
    final url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appbarColor,
          title: Text('Home'),
          foregroundColor: textColor,
          actions: [
            IconButton(
              onPressed: () {
                Share.share(
                    'https://apps.apple.com/jm/app/atl-praise-house/id6473567754');
              },
              icon: Icon(Icons.share),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(62, 88, 86, 86),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 148, 12, 0),
                ), //BoxDecoration
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 148, 12, 0)),
                  accountName: Text(
                    "",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  accountEmail: Text(
                    "Linking The World",
                    style: TextStyle(fontSize: 18, color: Colors.amber),
                  ),
                  currentAccountPictureSize: Size.square(60),
                  currentAccountPicture: CircleAvatar(
                    child: Image.asset(
                      "lib/assets/images/atllogo.png",
                      width: 100,
                      height: 100,
                    ),
                    backgroundColor: Color.fromARGB(255, 24, 115, 36),
                    //Text
                  ), //circleAvatar
                ), //UserAccountDrawerHeader
              ), //DrawerHeader
              ListTile(
                  selectedColor: drawerSelectedColor,
                  selectedTileColor: drawerTileColor,
                  leading: const Icon(Icons.home),
                  title: const Text('Home'),
                  selected: pageIndex == 0,
                  onTap: () {
                    Navigator.pop(context);

                    _onItemTapped(0);
                  }),
              ListTile(
                selectedColor: drawerSelectedColor,
                selectedTileColor: drawerTileColor,
                leading: const Icon(Icons.info),
                title: const Text('About'),
                selected: pageIndex == 1,
                onTap: () {
                  Navigator.pop(context);

                  _onItemTapped(1);
                },
              ),

              /* ListTile(
                selectedColor: drawerSelectedColor,
                selectedTileColor: drawerTileColor,
                leading: const Icon(Icons.contacts),
                title: const Text(' Contact'),
                selected: pageIndex == 4,
                onTap: () {
                  Navigator.pop(context);

                  _onItemTapped(4);
                },
              ),*/

              Divider(),

              ListTile(
                leading: const FaIcon(
                  FontAwesomeIcons.phone,
                  color: Color.fromARGB(255, 43, 44, 44),
                ),
                title: const Text(
                  '678-325-7944',
                ),
                onTap: () {
                  _launchPhone(
                      '1234567890'); // Replace with the desired phone number
                },
              ),

              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: Color.fromARGB(255, 13, 199, 13),
                  ),
                  title: const Text(
                    '678-558-4190',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('https://wa.me/1678-558-4190 ');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.envelope,
                    color: Color.fromARGB(255, 46, 36, 26),
                  ),
                  title: const Text(
                    'atlpraisehouse@gmail.com',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('http://atlpraisehouse18@gmail.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.globe,
                    color: Color.fromARGB(255, 13, 99, 199),
                  ),
                  title: const Text(
                    'Visit Our Website',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('https://www.atlpraisehouse.com/');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),

              Divider(),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromARGB(255, 13, 99, 199),
                  ),
                  title: const Text(
                    ' Facebook',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse(
                        'https://m.facebook.com/p/ATL-Praise-House-100067158745513/');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.twitter,
                    color: Color.fromARGB(255, 56, 147, 251),
                  ),
                  title: const Text(
                    'Twitter',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('https://www.twitter.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.instagram,
                    color: Color.fromARGB(255, 199, 13, 183),
                  ),
                  title: const Text(
                    ' Instagram',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse('https://www.instagram.com');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
              ListTile(
                  leading: const FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Color.fromARGB(255, 199, 13, 13),
                  ),
                  title: const Text(
                    'YouTube',
                  ),
                  onTap: () async {
                    Uri email = Uri.parse(
                        'https://www.youtube.com/@atlpraisehouse5412/streams');
                    if (await launchUrl(email)) {
                      //open email
                    } else {
                      //do nothing
                    }
                  }),
            ],
          ),
        ),
        body: pages[pageIndex]);
  }
}
