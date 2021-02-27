import 'package:flutter/material.dart';

class AnimasiContainer extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<AnimasiContainer> {
  bool _isBig = false;
  double _size = 100;

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
            AnimatedContainer(
              // use animation
              color: Colors.blue,
              height: _size,
              width: _size, duration: Duration(seconds: 1),
            ),
            RaisedButton(
              child: Text("Animate"),
              onPressed: () {
                setState(() {
                  _size = _isBig ? 150 : 100;
                  _isBig = !_isBig;
                });
              },
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/customAnimasi");
              },
              child: Text("custom animasi"),
            )
          ],
        ),
      ),
    );
  }
}
