import 'dart:math';

import 'package:flutter/material.dart';

class EightBallWidget extends StatefulWidget {
  final List<String> messages;
  final List<Color> colors;
  EightBallWidget(this.messages, this.colors);

  @override
  State<StatefulWidget> createState() => EightBallWidgetState();
}

class EightBallWidgetState extends State<EightBallWidget> {
  static const timeout = const Duration(seconds: 3);
  int _choose(int num) {
    return Random().nextInt(num);
  }

  @override
  Widget build(BuildContext context) {
    final message = widget.messages[_choose(widget.messages.length)];
    final backgroundColor = widget.colors[_choose(widget.colors.length)];
    return Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(
          'Magic Eight Ball',
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                message,
                style: Theme.of(context).textTheme.title,
              ),
              Text('🎱', style: TextStyle(fontSize: 120.0)),
              Image.asset('assets/eight_ball.png'),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {}),
      ),
    );
  }
}
