import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: (BallPage()),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me anything!',
        style: TextStyle(
          fontSize: 30,
          letterSpacing: 2,
        ),),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int correctAnswer = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: FlatButton(child: Image.asset('images/ball$correctAnswer.png'),
      onPressed: () {
        setState(() {
          correctAnswer = (Random().nextInt(5) + 1);
        });
      },
      ),
      ),
    );
  }
}

