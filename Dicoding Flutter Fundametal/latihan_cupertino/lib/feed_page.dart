import 'package:flutter/cupertino.dart';
import 'package:latihan_cupertino/category.dart';

void main() => runApp(FeedPage());

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Feeds Page'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Fedds Fage",
                style:
                    CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
              ),
              SizedBox(
                height: 8,
              ),
              CupertinoButton.filled(
                child: Text("Select Kategori"),
                onPressed: () {
                  showCupertinoModalPopup(
                    builder: (BuildContext context) {
                      return CupertinoActionSheet(
                        title: Text("Select Categories"),
                        actions: [
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => CategoryPage(
                                          selectedCategory: "Technology")));
                            },
                            child: Text("Technology"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => CategoryPage(
                                          selectedCategory: "Businnes")));
                            },
                            child: Text("Businnes"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => CategoryPage(
                                          selectedCategory: "Sports")));
                            },
                            child: Text("Sports"),
                          )
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          child: Text("Close"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      );
                    },
                    context: context,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
