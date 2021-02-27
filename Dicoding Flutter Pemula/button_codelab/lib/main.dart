import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Button Codelab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
              items: <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'Dart',
                  child: Text('Dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
                DropdownMenuItem<String>(
                  value: 'Swift',
                  child: Text('Swift'),
                ),
              ],
              value: language,
              hint: Text('Select a language'),
              onChanged: (String value) {
                setState(() {
                  language = value;
                });
              },
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Raised Button'),
            ),
            SizedBox(height: 30.0),
            FlatButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                'Flat Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 30.0),
            IconButton(
              color: Colors.blue,
              icon: Icon(Icons.people),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
