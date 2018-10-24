import 'package:flutter/material.dart';
import 'package:magic_eight_ball/src/eight_ball.dart';

void main() => runApp(new EightBallApp());

class EightBallApp extends StatelessWidget {
  // This widget is the root of your application.flutter
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.pink,
        textTheme: TextTheme(title: TextStyle(color: Colors.amber)),
      ),
      home: EightBallWidget([
        'Signs point to maybe?',
        'Try again, sucka...',
        'Yeeeeah, no.',
        'No. Just no.',
        'Sure, why not.',
        'Meh...',
      ], [
        Colors.blue,
        Colors.purple,
        Colors.red
      ]),
    );
  }
}
