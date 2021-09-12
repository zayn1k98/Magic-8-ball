import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(
              child: Text(
                'Ask me anything',
              ),
            ),
          ),
          body: BallPage(),
          backgroundColor: Colors.teal,
        ),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballText = 1;
  void onTouch() {
    setState(() {
      ballText = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                onTouch();
                print('I got clicked');
              },
              child: Image.asset('images/ball$ballText.png'),
            ),
          )
        ],
      ),
    );
  }
}
