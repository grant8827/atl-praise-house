// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//screens appbar colors
var appbarColor = const Color.fromARGB(255, 148, 12, 0);

var btm = const Color.fromARGB(255, 148, 12, 0);

var textColor = Colors.white;

var bodyColor = Color.fromARGB(255, 24, 115, 36);

//video and olay screen background
var mybackground = const BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      'lib/assets/images/bgzliferadio.png',
    ),
    fit: BoxFit.cover,
  ),
);

//drawer list color

var drawerSelectedColor = Colors.amber;
var drawerTileColor = const Color.fromARGB(255, 24, 115, 36);
var drawerUnselectyedColor = Color.fromARGB(255, 0, 0, 0);
