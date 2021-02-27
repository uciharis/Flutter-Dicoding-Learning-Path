
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Navigation & Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '-secondScreen');
              },
              child: Text('Goto Second Screen'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '-secondScreenWithData',
                    arguments: 'Hello From First Screen');
              },
              child: Text('Navigation With Data'),
            ),
            RaisedButton(
              onPressed: () async {
                final result =
                    await Navigator.pushNamed(context, '-returnDataScreen');
                SnackBar snackBar = SnackBar(content: Text('$result'));
                _scaffoldKey.currentState.showSnackBar(snackBar);
              },
              child: Text('Return Data from another Screen'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '-anotherScreen');
              },
              child: Text('Replace Screen'),
            )
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context); // back to initial routa
          },
          child: Text('Back'),
        ),
      ),
    );
  }
}

class SecondScreenWithData extends StatelessWidget {
  const SecondScreenWithData({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String data = ModalRoute.of(context).settings.arguments; // achive the data

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(data), // show the achived data
            RaisedButton(
              onPressed: () {
                Navigator.pop(context); // back to initial route
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}

class ReturnDataScreen extends StatelessWidget {
  ReturnDataScreen({Key key}) : super(key: key);

  final textController = TextEditingController(); // make TextEditingController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: textController, // insert the controller
                decoration: InputDecoration(labelText: 'Enter Your Name'),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, textController.text); // passing the argument 
              },
              child: Text('Send'),
            )
          ],
        ),
      ),
    );
  }
}

class ReplacementScreen extends StatelessWidget {
  const ReplacementScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '-anotherScreen');
          },
          child: Text('Open Another Screen'),
        ),
      ),
    );
  }
}

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Back To First Screen'),
            RaisedButton(
                child: Text("Back"),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
