import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row Column",
      theme: ThemeData.dark(),
      home: RowColumn(),
    );
  }
}

class RowColumn extends StatefulWidget {
  RowColumn({Key key}) : super(key: key);

  @override
  _RowColumnState createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text('Hello this is very long text!'),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text('Goodbye!'),
            ),
          ),
          RaisedButton(onPressed: null)
        ],
      ),
    );
  }
}
