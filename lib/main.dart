import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Magic Ball',
          ),
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(
                    () {
                      ballNumber = Random().nextInt(5) + 1;
                    },
                  );
                },
                child: Image(
                  image: AssetImage('images/ball$ballNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
