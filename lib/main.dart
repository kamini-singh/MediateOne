import 'package:flutter/material.dart';
import 'package:meditation_app/homepg.dart';
import 'package:meditation_app/splashss.dart';
void main() {
  runApp(
    MaterialApp(
      initialRoute: 'splash',
      routes: {
        'home' : (context) =>MyHomePage(),
        'splash': (context) =>Splash(),
      },
    ),
  );
}