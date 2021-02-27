import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Input Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Input Widget'),
      );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _email = '';
  bool _lightOn = false;
  String language;
  bool aggre = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Input Widget'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TextField(
              onChanged: (var value) => setState(() => _email = value),
            ),
            Switch(
              value: _lightOn,
              onChanged: (bool value) => setState(() => _lightOn = value),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Dart',
                groupValue: language,
                onChanged: (String value) => setState(() => language = value),
              ),
              title: Text('Dart'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Kotlin',
                groupValue: language,
                onChanged: (String value) => setState(() => language = value),
              ),
              title: Text('Kotlin'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'Swift',
                groupValue: language,
                onChanged: (String value) => setState(() => language = value),
              ),
              title: Text('Swift'),
            ),
            ListTile(
              leading: Checkbox(
                value: aggre,
                onChanged: (bool value) => setState(() => aggre = value),
              ),
              title: Text('Aggre/Disaggre'),
            ),
          ],
        ),
      ),
    );
  }
}
