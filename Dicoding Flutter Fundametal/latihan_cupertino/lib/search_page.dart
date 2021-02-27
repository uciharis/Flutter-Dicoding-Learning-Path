import 'package:flutter/cupertino.dart';

void main() => runApp(SearchPage());

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Search Page'),
        ),
        child: Center(
          child: Container(
            child: Text('Search Page'),
          ),
        ),
      ),
    );
  }
}
