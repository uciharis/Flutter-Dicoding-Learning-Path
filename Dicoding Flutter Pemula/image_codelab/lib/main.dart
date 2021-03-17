import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Codelab',
      home: ImageScreen(),
    );
  }
}

class ImageScreen extends StatefulWidget {
  ImageScreen({Key key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://www.computerhope.com/jargon/r/random-dice.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
