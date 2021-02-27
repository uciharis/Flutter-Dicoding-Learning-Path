import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
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
        body: Column(
          children: <Widget>[
            Image.network(
              'https://picsum.photos/200/300',
              height: 200,
              width: 200,
            ),
            Image.asset('asset/brokoli.png', width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}
