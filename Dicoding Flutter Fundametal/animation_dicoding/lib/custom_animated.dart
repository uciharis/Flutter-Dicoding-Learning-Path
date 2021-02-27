import 'dart:math';
import 'package:flutter/material.dart';

class CustomAnimasi extends StatefulWidget {
  @override
  _CustomAnimasiState createState() => _CustomAnimasiState();
}

class _CustomAnimasiState extends State<CustomAnimasi> {
  double _size = 100;

  Tween _animationTween = Tween<double>(begin: 0, end: pi * 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder<double>(
              tween: _animationTween,
              duration: Duration(seconds: 3),
              builder: (context, double value, child) {
                return Transform.rotate(
                  angle: value,
                  child: Container(
                    color: Colors.blue,
                    height: _size,
                    width: _size,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
