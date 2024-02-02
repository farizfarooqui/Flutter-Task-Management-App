import 'package:flutter/material.dart';
import 'package:pulsator/pulsator.dart';

TextStyle myTextStyle = const TextStyle(
    fontSize: 30, color: Colors.white, backgroundColor: Colors.black);

ButtonStyle addTaskButton = ElevatedButton.styleFrom(
  backgroundColor: Colors.blue,
  foregroundColor: Colors.white,
  fixedSize: const Size(10000, 50),
  shape: const RoundedRectangleBorder(),
);

IconButton floatingActionMsgButton = IconButton(
    onPressed: () {},
    icon: const PulseIcon(
      icon: Icons.message,
      pulseColor: Colors.blue,
      iconColor: Colors.white,
      iconSize: 44,
      innerSize: 54,
      pulseSize: 116,
      pulseCount: 4,
      pulseDuration: Duration(seconds: 4),
    ));
