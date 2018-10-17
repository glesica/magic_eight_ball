import 'dart:math';

import 'package:flutter/material.dart';

class EightBallWidget extends StatefulWidget {
  final List<String> messages;

  EightBallWidget(this.messages);

  @override
  State<StatefulWidget> createState() => EightBallWidgetState();
}

class EightBallWidgetState extends State<EightBallWidget> {
  int index = 0;

  void _choose() {
    setState(() {
      index = Random().nextInt(widget.messages.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final message = widget.messages[index];

    return Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(
          'Magic Eight Ball',
        ),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              message,
              style: Theme.of(context).textTheme.title,
            ),
            Text('🎱', style: TextStyle(fontSize: 120.0)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _choose),
    );
  }
}
