import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text("Ask Me Anything"),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BallState();
  }
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset(
            "../images/ball$ballNumber.png",
            width: 250,
            height: 250,
          ),
        ),
      ),
    );
  }
}
