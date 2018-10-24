import 'dart:async';
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
  
  bool _isShaking = false;
  String imagePath = 'assets/eight_ball.png';
  int _choose(int num) {
    return Random().nextInt(num);
  }

  // @override 
  // void initState(){} 

  @override
  Widget build(BuildContext context) {
    String message = "";
    Color backgroundColor = Color(0x000000);
    if(_isShaking) {
      imagePath = 'assets/eight_ball.gif';
      var timeout = Duration(seconds: 3);
      Timer(timeout, (){
        setState(() {
          _isShaking = false;
          imagePath = 'assets/eight_ball.png';
          message = widget.messages[_choose(widget.messages.length)];
          backgroundColor = widget.colors[_choose(widget.colors.length)];
        });
      });
    }
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
              Image.asset(imagePath),
              Text(
                message,
                style: Theme.of(context).textTheme.title,
              ),
              // Text('🎱', style: TextStyle(fontSize: 120.0)),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _isShaking = true;
        }),
      ),
    );
  }
}
